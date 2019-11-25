#!/bin/sh
pacman -Syu ansible yay
sleep 5
yay -S ansible-aur-git
