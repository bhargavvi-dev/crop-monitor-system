import requests

# url = 'http://crop-monitor-system.herokuapp.com/readings'
url = 'http://localhost:3000/readings'
payload = {'temp_read': 25, 'humi_read': 35, 'sensor_id':'1'}
r = requests.post(url, params=payload)
print (r.url)


