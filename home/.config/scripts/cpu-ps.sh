#!/bin/sh
notify-send "$(ps axch -o cmd:20,%cpu --sort=-%cpu | head)";


