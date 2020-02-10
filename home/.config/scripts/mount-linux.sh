#!/bin/bash
LINUX_FOLDER=/mnt/linux

mount --rbind --make-rslave /dev $LINUX_FOLDER/dev 
mount --rbind --make-rslave /proc $LINUX_FOLDER/proc
mount --rbind --make-rslave /sys $LINUX_FOLDER/sys
