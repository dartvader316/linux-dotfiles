#!/bin/bash
mount -t ntfs-3g -o rw,auto,user,fmask=0022,dmask=0000 /dev/nvme0n1p6 /mnt/ntfs/main_data/
mount -t ntfs-3g -o rw,auto,user,fmask=0022,dmask=0000 /dev/nvme0n1p4 /mnt/ntfs/windows10/
