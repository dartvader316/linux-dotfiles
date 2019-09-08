#!/bin/bash

current=$(xbacklight -get)
if [ "$current" == "0.000000" ]; then 
xbacklight -set 50
else
xbacklight -set 0
fi