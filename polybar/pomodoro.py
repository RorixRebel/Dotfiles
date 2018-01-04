#!/usr/bin/python
"""
Script that spawns 2 threads.
1. Will start a notification that alerts you to keep working or if you deserve a break
2. Countdown timer to display in your polybar
"""
import time
from datetime import datetime, timedelta
import subprocess
import threading


def start(rest_time):
    """
    Starts a loop and sends notifications via 'notify-send', receives 1 argument:
        rest_time: int
    """
    subprocess.run(['notify-send', 'Pomodoro Started at {}'.format(NOW.strftime('%H:%M:%S'))])
    while END > NOW:
        current = datetime.now()
        time_difference = END - current
        remaining = round(time_difference.total_seconds()/60)
        subprocess.run(['notify-send', 'Keep Working, time left: {} minutes'.format(remaining)])
        time.sleep(300)
        if current >= END:
            break
    subprocess.run(['notify-send', 'Pomodoro Completed at {}'.format(END.strftime('%H:%M:%S'))])
    time.sleep(5)
    subprocess.run(['notify-send', 'Break Time {}'.format(rest_time)])
    time.sleep(rest_time*60)


def counter(work_time):
    """
    Starts a countdown timer and displays result in console, takes 1 argument
        work_time: int
    """
    time_remaining = work_time * 60
    while time_remaining:
        mins, secs = divmod(time_remaining, 60)
        timeformat = '{:02d}:{:02d}'.format(mins, secs)
        print(timeformat, end='\r')
        time.sleep(1)
        time_remaining -= 1
    print('Pomodoro Done, enjoy your break')


if __name__ == "__main__":
    WORK_TIME = 25
    RELAX = 5
    NOW = datetime.now()
    END = NOW + timedelta(minutes=WORK_TIME)


    # Starts a list for the threads we will need
    THREAD_LIST = []
    THREAD1 = threading.Thread(target=counter, args=(WORK_TIME,))
    THREAD2 = threading.Thread(target=start, args=(RELAX,))

    # Appends threads to list
    THREAD_LIST.append(THREAD1)
    THREAD_LIST.append(THREAD2)

    # Runs threads
    for p in THREAD_LIST:
        p.start()

    # Ensure threads are done
    for p in THREAD_LIST:
        p.join()
