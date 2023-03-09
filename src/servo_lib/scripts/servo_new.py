#!/usr/bin/env python3
from gpiozero import Servo
from time import sleep


servo = Servo(18)
while True:
	servo.value = 1
	sleep(1)
	servo.value = 0.2
	sleep(1)
 # Release the PWM device when finished

