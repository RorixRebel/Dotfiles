#!/usr/bin/python

import urllib.request, json

city = "San Antonio"
api_key = "bfd92bb103b04d4f7bc58df281a98909"
units = "Metric"
unit_key = "C"

weather = eval(str(urllib.request.urlopen("http://api.openweathermap.org/data/2.5/weather?q={}&APPID={}&units={}".format(city, api_key, units)).read())[2:-1])

info = weather["weather"][0]["description"].capitalize()
temp = int(float(weather["main"]["temp"]))

print("%s, %i °%s" % (info, temp, unit_key))
