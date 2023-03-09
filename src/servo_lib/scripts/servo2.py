#!/usr/bin/env python3

from gpiozero import Servo
from std_msgs.msg import Int32
from time import sleep
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

while True:
#    servo.value = -1 # set servo to the minimum angle
 #   sleep(1) # wait for 1 second

  #  servo.value = 0 # set servo to the center position
   # sleep(1) # wait for 1 second

    #servo.value = 1 # set servo to the maximum angle
   # sleep(1) # wait for 1 second
	if(location == 1 and snt_msg == 1):
		drop_loc1()
	elif(location == 2 and snt_msg == 1):
		drop_loc2()
	else :
		servo.value = 0.5

