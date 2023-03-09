#!/usr/bin/env python3
from gpiozero import Servo

import rospy
from std_msgs.msg import Int32

snt_msg = 0
global location 
location = 0
servo = Servo(18) # GPIO pin connected to the servo
def drop_loc1():
        servo.value = -1
        sleep(1)
def drop_loc2():
        servo.value = 0
        sleep(1)



def callback(data):
    rospy.loginfo(data.data)
    location = data.data
    if(location == 1 and snt_msg == 1):
                drop_loc1()
    elif(location == 2 and snt_msg == 1):
                drop_loc2()
   

	

def listener():
    rospy.init_node('servo_subscriber', anonymous=True)
    rospy.Subscriber('servo_cmd', Int32, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()

