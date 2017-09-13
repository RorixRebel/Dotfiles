#!/usr/bin/env sh

# Cleanup old executions
killall wallpaper

# Start wal
while true
do 
    wal -q -t -i ~/Pictures -o ~/.config/i3/wal-set
    ~/.config/polybar/launch.sh
    sleep 15m
done
