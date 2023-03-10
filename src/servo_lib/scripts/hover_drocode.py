#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from term_colors import *
import rospy

from math import atan2, pow, degrees, radians, sin, cos
from geometry_msgs.msg import PoseStamped, Point, TwistStamped
from nav_msgs.msg import Odometry
from mavros_msgs.msg import State
from mavros_msgs.srv import CommandTOL, CommandTOLRequest, CommandLong, CommandBool, CommandBoolRequest, SetMode, SetModeRequest
from sensor_msgs.msg import Image


from urllib.parse import parse_qsl, urljoin, urlparse

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

def angle_to_duty_cycle(angle):
    duty_cycle = SERVO_MIN + (angle / 180.0) * (SERVO_MAX - SERVO_MIN)
    return duty_cycle

def set_servo_angle(angle):
    duty_cycle = angle_to_duty_cycle(angle)
    servo.ChangeDutyCycle(duty_cycle)


class drone_api:
    def __init__(self):
 
        self.current_state_g = State()
        self.current_pose_g = Odometry()
        self.local_offset_pose_g = Point()
        self.waypoint_g = PoseStamped()

        self.current_heading_g = 0.0
        self.local_offset_g = 0.0
        self.correction_heading_g = 0.0

        self.ns = rospy.get_namespace()
        if self.ns == "/":
            rospy.loginfo(CBLUE2 + "Using default namespace" + CEND)
        else:
            rospy.loginfo(CBLUE2 + "Using {} namespace".format(self.ns) + CEND)

        self.local_pos_pub = rospy.Publisher(
            name="{}mavros/setpoint_position/local".format(self.ns),
            data_class=PoseStamped,
            queue_size=10,
        )

        self.currentPos = rospy.Subscriber(
            name="{}mavros/global_position/local".format(self.ns),
            data_class=Odometry,
            queue_size=10,
            callback=self.pose_cb,
        )

        self.state_sub = rospy.Subscriber(
            name="{}mavros/state".format(self.ns),
            data_class=State,
            queue_size=10,
            callback=self.state_cb,
        )

        rospy.wait_for_service("{}mavros/cmd/arming".format(self.ns))

        self.arming_client = rospy.ServiceProxy(
            name="{}mavros/cmd/arming".format(self.ns), service_class=CommandBool
        )

        rospy.wait_for_service("{}mavros/cmd/land".format(self.ns))

        self.land_client = rospy.ServiceProxy(
            name="{}mavros/cmd/land".format(self.ns), service_class=CommandTOL
        )

        rospy.wait_for_service("{}mavros/cmd/takeoff".format(self.ns))

        self.takeoff_client = rospy.ServiceProxy(
            name="{}mavros/cmd/takeoff".format(self.ns), service_class=CommandTOL
        )

        rospy.wait_for_service("{}mavros/set_mode".format(self.ns))

        self.set_mode_client = rospy.ServiceProxy(
            name="{}mavros/set_mode".format(self.ns), service_class=SetMode
        )

        rospy.wait_for_service("{}mavros/cmd/command".format(self.ns))

        self.command_client = rospy.ServiceProxy(
            name="{}mavros/cmd/command".format(self.ns), service_class=CommandLong
        )
        rospy.loginfo(CBOLD + CGREEN2 + "Initialization Complete." + CEND)

    def state_cb(self, message):
        self.current_state_g = message

    def pose_cb(self, msg):
        self.current_pose_g = msg
        self.enu_2_local()

        q0, q1, q2, q3 = (
            self.current_pose_g.pose.pose.orientation.w,
            self.current_pose_g.pose.pose.orientation.x,
            self.current_pose_g.pose.pose.orientation.y,
            self.current_pose_g.pose.pose.orientation.z,
        )
        psi = atan2((2 * (q0 * q3 + q1 * q2)),(1 - 2 * (pow(q2, 2) + pow(q3, 2))))
        self.current_heading_g = degrees(psi) - self.local_offset_g

    def enu_2_local(self):
        x, y, z = (
            self.current_pose_g.pose.pose.position.x,
            self.current_pose_g.pose.pose.position.y,
            self.current_pose_g.pose.pose.position.z,
        )

        current_pos_local = Point()

        current_pos_local.x = x * cos(radians((self.local_offset_g - 90))) - y * sin(
            radians((self.local_offset_g - 90))
        )

        current_pos_local.y = x * sin(radians((self.local_offset_g - 90))) + y * cos(
            radians((self.local_offset_g - 90))
        )

        current_pos_local.z = z

        return current_pos_local

    def wait4connect(self):
        rospy.loginfo(CYELLOW2 + "Waiting for FCU connection" + CEND)
        while not rospy.is_shutdown() and not self.current_state_g.connected:
            rospy.sleep(0.01)
        else:
            if self.current_state_g.connected:
                rospy.loginfo(CGREEN2 + "FCU connected" + CEND)
                return 0
            else:
                rospy.logerr(CRED2 + "Error connecting to drone's FCU" + CEND)
                return -1

    def wait4start(self):
        rospy.loginfo(CYELLOW2 + CBLINK +
                      "Waiting for user to set mode to GUIDED" + CEND)
        while not rospy.is_shutdown() and self.current_state_g.mode != "GUIDED":
            rospy.sleep(0.01)
        else:
            if self.current_state_g.mode == "GUIDED":
                rospy.loginfo(
                    CGREEN2 + "Mode set to GUIDED. Starting Mission..." + CEND)
                return 0
            else:
                rospy.logerr(CRED2 + "Error startting mission" + CEND)
                return -1

    def set_mode(self, mode):
        SetMode_srv = SetModeRequest(0, mode)
        response = self.set_mode_client(SetMode_srv)
        if response.mode_sent:
            # rospy.loginfo(CGREEN2 + "SetMode Was successful" + CEND)
            return 0
        else:
            rospy.logerr(CRED2 + "SetMode has failed" + CEND)
            return -1

    def arm(self):
        rospy.loginfo(CBLUE2 + "Arming Drone" + CEND)

        arm_request = CommandBoolRequest(True)

        while not rospy.is_shutdown() and not self.current_state_g.armed:
            rospy.sleep(0.1)
            response = self.arming_client(arm_request)
            self.local_pos_pub.publish(self.waypoint_g)
        else:
            if response.success:
                rospy.loginfo(CGREEN2 + "Arming successful" + CEND)
                return 0
            else:
                rospy.logerr(CRED2 + "Arming failed" + CEND)
                return -1

    def takeoff(self, takeoff_alt):
        self.arm()
        takeoff_srv = CommandTOLRequest(0, 0, 0, 0, takeoff_alt)
        response = self.takeoff_client(takeoff_srv)
        rospy.sleep(3)

        while ( abs(self.current_pose_g.pose.pose.position.z - takeoff_alt) > 0.25):
            pass

        
        if response.success:
            rospy.loginfo(CGREEN2 + "Takeoff successful" + CEND)
            return 0
        else:
            rospy.logerr(CRED2 + "Takeoff failed" + CEND)
            return -1

    def initialize_local_frame(self):
        """This function will create a local reference frame based on the starting location of the drone. This is typically done right before takeoff. This reference frame is what all of the the set destination commands will be in reference to."""
        self.local_offset_g = 0.0

        for i in range(30):
            rospy.sleep(0.1)

            q0, q1, q2, q3 = (
                self.current_pose_g.pose.pose.orientation.w,
                self.current_pose_g.pose.pose.orientation.x,
                self.current_pose_g.pose.pose.orientation.y,
                self.current_pose_g.pose.pose.orientation.z,
            )

            psi = atan2((2 * (q0 * q3 + q1 * q2)),
                        (1 - 2 * (pow(q2, 2) + pow(q3, 2))))

            self.local_offset_g += degrees(psi)
            self.local_offset_pose_g.x += self.current_pose_g.pose.pose.position.x
            self.local_offset_pose_g.y += self.current_pose_g.pose.pose.position.y
            self.local_offset_pose_g.z += self.current_pose_g.pose.pose.position.z

        self.local_offset_pose_g.x /= 30.0
        self.local_offset_pose_g.y /= 30.0
        self.local_offset_pose_g.z /= 30.0
        self.local_offset_g /= 30.0

        rospy.loginfo(CBLUE2 + "Coordinate offset set" + CEND)
        rospy.loginfo(
            CGREEN2 + "The X-Axis is facing: {}".format(self.local_offset_g) + CEND)



times=0
drone = drone_api()
frame_centre = [320.,240.]
pixel_threshold = 10
reached_marker_0 = 0
reached_marker_4 = 0
reached_color = 0
reached_marker_4_2 = 0
#    Marker Coordinates

#    x: -1.58653998375
#    y: 0.0905971601605

mp = {}








def thres_col(cent_x,cent_y):
    mag_col=((cent_x-frame_centre[0])**2+(cent_y-frame_centre[1])**2)**(0.5)
    if(mag_col>10):
        return mag_col
    return 0



def hovering_phase():
    pose_pub = rospy.Publisher('/mavros/setpoint_position/local', PoseStamped, queue_size=10)
    poser=PoseStamped()
    cur_x = drone.current_pose_g.pose.pose.position.x
    cur_y = drone.current_pose_g.pose.pose.position.y
    poser.pose.position.x = cur_x
    poser.pose.position.y = cur_y
    poser.pose.position.z = 0.3
    #pose_pub.publish(poser)
    # rospy.loginfo("First pose was given")
    
    # rospy.loginfo("Second pose was given")
    while (drone.current_pose_g.pose.pose.position.z < 9.95):
        poser.pose.position.z = 10
        pose_pub.publish(poser)

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
    # rospy.loginfo("First pose was given")
  
    # rospy.loginfo("Second pose was given")
    while (drone.current_pose_g.pose.pose.position.z < 2.95):
        poser.pose.position.z = 3
        pose_pub.publish(poser)

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
    rospy.loginfo(CGREEN2 + "Takeoff Completed" + CEND)

def callback(data):
    hovering_phase()
    rospy.sleep(2)
    if(data.data == "payone"):
        dropping_phase()
        rospy.sleep(3)
        set_servo_angle(30) 
        rospy.sleep(5)
        hovering_phase()
        rospy.sleep(3)
        rtl()

def recv():
    rospy.Subscriber('/servo_topic',String,callback)
    rospy.spin()
 

if __name__ == '__main__':
    # print(k)
    rospy.init_node("drone_controller", anonymous=True)
    takeoff_drone()
   
    recv()