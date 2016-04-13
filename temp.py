
import requests
url = 'https://crop-monitor-system.herokuapp.com/readings'
#url = 'http://localhost:3000/readings'
payload = {'temp_read': '355', 'humi_read': '30', 'sensor_id':'2'}
r = requests.post(url, params=payload)
print(r.url)
