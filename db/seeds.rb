# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@examples.com', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'ptlbhargav93@gmail.com', password: 'india@786', password_confirmation: 'india@786')
AdminUser.create!(email: 'jinu.swety@gmail.com', password: 'india@786', password_confirmation: 'india@786')
#Crop.create!(name:'Wheate',ideal_temp: =>'28',ideal_humi: '29',min_temp: '20',max_temp: '35',min_humi: '15',max_humi: '35')
Sensor.create(name:'Temp_sensor', description: 'DHT11 temperature and humidity sensor')
