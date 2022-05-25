#!/bin/bash

# building the firmware stage (void-pinephone) -> rootfs + platformfs if they don't exist

echo "flashing firmware ..."
#dd if=void-pinephone-20220518.img of=/dev/mmcblk0 bs=4M status=progress oflag=sync
# sleep 5; -- should grep / log / trigger on that

mount /dev/mmcblk0p2 /mnt/usb
./arcan-inject.sh /mnt/usb $1
umount /mnt/usb
