#!/usr/bin/python3

import urllib.request
import os


city = "San Antonio"
api_key = os.environ.get('WEATHER_API')
units = "Metric"
unit_key = "C"

weather = eval(str(urllib.request.urlopen("http://api.openweathermap.org/data/2.5/weather?q={}&APPID={}&units={}".format(city, api_key, units)).read())[2:-1])

info = weather["weather"][0]["description"].capitalize()
temp = int(float(weather["main"]["temp"]))

print("{}, {} °{}".format(info, temp, unit_key))
