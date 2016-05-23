import cgi
import cgitb
import time
import Adafruit_DHT
import commands
from subprocess import call
import requests

period = 1
pin = 4
def run():
  while True:

    humidity, temperature = Adafruit_DHT.read_retry( Adafruit_DHT.DHT11, pin )
    if humidity is not None and temperature is not None:
        print 'temp = {0:0.1f} humidity= {1:0.1f}'.format(temperature, humidity)
        t =   '{0:0.1f}'.format(temperature, humidity)
        h =  '{1:0.1f}'.format(temperature, humidity)
        url = 'http://crop-monitor-system.herokuapp.com/readings'
        #url = 'http://localhost:3000/readings'
        payload = {'temp_read': t, 'humi_read': h, 'sensor_id':'1'}
        r = requests.post(url, params=payload)
        print (r.url)
    else:
        print "Failed to get reading. Try again!"
    time.sleep( period )
run()


