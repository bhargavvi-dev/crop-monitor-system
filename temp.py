import requests
url = 'http://crop-monitor-system.herokuapp.com/readings'
payload = {'temp_read': '55', 'humi_read': '30', 'sensor_id':'2'}
r = requests.post(url, params=payload)
print(r.url)
