#!/usr/bin/python3

import requests
import os

# Setup Data
city = "San Antonio"
api_key = os.environ.get('WEATHER_API')
units = "Metric"
unit_key = "C"
URL = "http://api.openweathermap.org/data/2.5/weather?q={}&appid={}&units={}".format(city, api_key, units)


# Request
weather = requests.get(URL)
weather_json = weather.json()


# Weather Data
info = weather_json['weather'][0]['description'].capitalize()
temp = int(float(weather_json['main']['temp']))
print("{}, {} °{}".format(info, temp, unit_key))
