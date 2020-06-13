#!/bin/bash
zenity --question --text="Do you really want to exit lxde?" && pkill -9 -f lxsession && killall -s SIGKILL pcmanfm
