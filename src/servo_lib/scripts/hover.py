#!/usr/bin/env python3

# -*- coding: utf-8 -*-

from urllib.parse import parse_qsl, urljoin, urlparse
import rospy
from std_msgs.msg import String
import RPi.GPIO as GPIO
GPIO.setmode(GPIO.BCM)
GPIO.setup(18, GPIO.OUT)

SERVO_FREQ = 50
SERVO_MIN = 2.5
SERVO_MAX = 12.5

servo = GPIO.PWM(18, SERVO_FREQ)
servo.start(0)


from time import sleep
import os,sys

rospy.init_node('servo_node', anonymous=True)
pub = rospy.Publisher('servo_topic', String, queue_size=10)
rate = rospy.Rate(10) # 10Hz

from py_gnc import *

from sensor_msgs.msg import Image
from term_colors import *
from geometry_msgs.msg import TwistStamped,PoseStamped

times=0
drone = gnc_api()
frame_centre = [320.,240.]
pixel_threshold = 10

#    Marker Coordinates

#    x: -1.58653998375
#    y: 0.0905971601605

def angle_to_duty_cycle(angle):
    duty_cycle = SERVO_MIN + (angle / 180.0) * (SERVO_MAX - SERVO_MIN)
    return duty_cycle

def set_servo_angle(angle):
    duty_cycle = angle_to_duty_cycle(angle)
    servo.ChangeDutyCycle(duty_cycle)

def callback(data):
    if(data == "payone"):
        set_servo_angle(30) 
        rospy.sleep(5)
        hovering_phase()
        rtl()

def hovering_phase():
    pose_pub = rospy.Publisher('/mavros/setpoint_position/local', PoseStamped, queue_size=10)
    poser=PoseStamped()
    cur_x = drone.current_pose_g.pose.pose.position.x
    cur_y = drone.current_pose_g.pose.pose.position.y

    poser.pose.position.x = cur_x
    poser.pose.position.y = cur_y
    poser.pose.position.z = 10
    pose_pub.publish(poser)
    rospy.loginfo("First pose was given")
    rospy.sleep(2)

    global times
    times += 1
    return

def dropping_phase():
    pose_pub = rospy.Publisher('/mavros/setpoint_position/local', PoseStamped, queue_size=10)
    
    poser=PoseStamped()
    cur_x = drone.current_pose_g.pose.pose.position.x
    cur_y = drone.current_pose_g.pose.pose.position.y

    poser.pose.position.x = cur_x
    poser.pose.position.y = cur_y
    poser.pose.position.z = 3
    pose_pub.publish(poser)
    rospy.loginfo("First pose was given")
    rospy.sleep(2)

    global times
    times += 1
    return

def rtl():
    drone.set_mode("RTL")
    global times
    times += 1

def takeoff_drone(): 
    drone.wait4connect()
    drone.wait4start()
    drone.initialize_local_frame()
    drone.takeoff(2)
    rate = rospy.Rate(3)
    rospy.loginfo("Takeoff Completed" )

def recv():
    rospy.Subscriber('/servo_topic',String,callback)
    rospy.spin()
 

if __name__ == '__main__':
    # print(k)
    rospy.init_node("drone_controller", anonymous=True)
    takeoff_drone()
    hovering_phase()
    dropping_phase()
    recv()
 

