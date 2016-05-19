
import requests
#url = 'https://crop-monitor-system.herokuapp.com/readings'
url = 'http://localhost:3000/readings'
payload = {'temp_read': '500', 'humi_read': '300', 'sensor_id':'1'}
r = requests.post(url, params=payload)
print(r.url)
