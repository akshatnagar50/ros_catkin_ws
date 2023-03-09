import RPi.GPIO as GPIO
import time

# Set the GPIO mode to BCM
GPIO.setmode(GPIO.BCM)

# Set the GPIO pin number for the servo
servo_pin = 18

# Set the PWM frequency and duty cycle range
pwm_frequency = 50 # Hz
duty_cycle_min = 2.5 # %
duty_cycle_max = 12.5 # %

# Set up the PWM signal
GPIO.setup(servo_pin, GPIO.OUT)
pwm = GPIO.PWM(servo_pin, pwm_frequency)
pwm.start(duty_cycle_min)

# Function to set the servo angle
def set_angle(angle):
    duty_cycle = ((angle / 180) * (duty_cycle_max - duty_cycle_min)) + duty_cycle_min
    pwm.ChangeDutyCycle(duty_cycle)
    time.sleep(0.5)

# Set the servo angle to 0 degrees
set_angle(0)

# Wait for 1 second
time.sleep(1)

# Set the servo angle to 90 degrees
set_angle(90)

# Wait for 1 second
time.sleep(1)

# Set the servo angle to 180 degrees
set_angle(180)

# Clean up the GPIO pins
pwm.stop()
GPIO.cleanup()

