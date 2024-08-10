#!/bin/bash
# This script is called by udev when a USB device is plugged in.
# It will switch the device to the correct mode for the device.

# Adapted from Pavel Piatruk (https://blog.tanatos.org/posts/huawei_e3372h-325_brovi_with_linux_stickmode/)

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

usb_modeswitch -b $BUSNUM -g $DEVNUM -v $ID_VENDOR_ID -p $ID_MODEL_ID  -X
echo $ID_VENDOR_ID $ID_MODEL_ID ff > /sys/bus/usb-serial/drivers/option1/new_id

exit 0
