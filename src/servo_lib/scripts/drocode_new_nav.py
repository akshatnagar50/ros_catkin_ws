#!/usr/bin/env python3

# -*- coding: utf-8 -*-

import rospy
from py_gnc import *
from sensor_msgs.msg import Image
from term_colors import *
from geometry_msgs.msg import TwistStamped
from std_msgs.msg import String
import time

times=0
drone = gnc_api()
frame_centre = [320.,240.]
pixel_threshold = 10

#    Marker Coordinates
#    x: -1.58653998375
#    y: 0.0905971601605
        


def servo_callback(data):
    rospy.loginfo("pubing vel")
    velocity_pub = rospy.Publisher("/mavros/setpoint_velocity/cmd_vel", TwistStamped, queue_size=10)
    vel_to_diro=TwistStamped()
    #Change values
    vel_to_diro.twist.linear.x=0
    vel_to_diro.twist.linear.y=0
    while data!="stop" and not rospy.is_shutdown():
        velocity_pub.publish(vel_to_diro)
    vel_to_diro.twist.linear.x=0
    vel_to_diro.twist.linear.y=0
    t=time.time()
    while time.time()-t<5 and not rospy.is_shutdown():
        velocity_pub.publish(vel_to_diro)
    while data!="payone" and not rospy.is_shutdown():
        continue
    rtl()
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
    rospy.loginfo(CGREEN2 + "Takeoff Completed" + CEND)
    rospy.sleep(5)

def recv():
    rospy.Subscriber('/servo_topic',String,servo_callback)
    rospy.spin()

if __name__ == '__main__':
    # print(k)
    rospy.init_node("drone_controller", anonymous=True)
    takeoff_drone()
    recv()
