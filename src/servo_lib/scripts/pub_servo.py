#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int32

rospy.init_node('servo_publisher', anonymous=True)
pub = rospy.Publisher('servo_cmd', Int32, queue_size=10)
rate = rospy.Rate(10)

while not rospy.is_shutdown():
    message = 0
    rospy.loginfo("Servo cmd published	")
    pub.publish(message)
    rate.sleep()

