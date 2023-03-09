#!/usr/bin/env python3
from urllib.parse import parse_qsl, urljoin, urlparse
from gpiozero import Servo



servo = Servo(18)

from time import sleep
from gpiozero import LED
import os,sys

import paho.mqtt.client as paho

led = LED(11)



def on_connect(self, mosq, obj, rc):
        self.subscribe("led", 0)
    
def on_message(mosq, obj, msg):
    print(msg.topic + " " + str(msg.qos) + " " + str(msg.payload))
    if(msg.payload == b"on"):    
        print("Servo on")
        led.on() 
        servo.value = -0.6     
       #LED ON
    elif(msg.payload == b"off"):    
        print("Servo off")
          # LED OFF
        led.off()
        servo.value = 1

def on_publish(mosq, obj, mid):
    print("mid: " + str(mid))

    
def on_subscribe(mosq, obj, mid, granted_qos):
    print("Subscribed: " + str(mid) + " " + str(granted_qos))



mqttc = paho.Client()                        # object declaration
# Assign event callbacks
mqttc.on_message = on_message                          # called as callback
mqttc.on_connect = on_connect
mqttc.on_publish = on_publish
mqttc.on_subscribe = on_subscribe


#url_str = os.environ.get('CLOUDMQTT_URL', 'tcp://broker.emqx.io:1883')                  # pass broker addr e.g. "tcp://iot.eclipse.org"
#url_str = os.environ.get('CLOUDMQTT_URL', 'tcp://broker.hivemq.com:1883')
url_str = os.environ.get('CLOUDMQTT_URL', 'tcp://broker.emqx.io:1883') 
url = urlparse(url_str)

mqttc.connect(url.hostname, url.port)

rc = 0
while True:
    while rc == 0:
        import time   
        rc = mqttc.loop()
        #time.sleep(0.5)
    print("rc: " + str(rc))
