#!/bin/bash

current=$(xrandr --verbose | awk '/Brightness/ { print $2; exit }')
if [ "$current" == "0.0" ]; then 
xrandr --output eDP-1 --brightness 1
else
xrandr --output eDP-1 --brightness 0
fi
