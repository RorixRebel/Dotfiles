#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar
killall -q weather.py

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 3; done

# Launch bar
polybar -c $HOME/dotfiles/polybar/config main &
