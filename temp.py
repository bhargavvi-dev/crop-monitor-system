import requests
url = 'http://localhost:3000/readings'
payload = {'temp_read': '25', 'humi_read': '27', 'sensor_id':'1'}
r = requests.post(url, params=payload)

print(r.url)
