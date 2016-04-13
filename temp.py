import requests
url = 'http://localhost:3000/readings'
payload = {'temp_read': '45', 'humi_read': '45', 'sensor_id':'1'}
r = requests.post(url, params=payload)
print(r.url)
