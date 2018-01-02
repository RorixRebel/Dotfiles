#!/usr/bin/python

import datetime

today = datetime.datetime.now()
end = datetime.datetime(2018,3,31)

final =  end  - today
print(final.days)
