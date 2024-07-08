#!/bin/bash

VENDOR="RPI"
MOUNTPOINT="/media/$USER/rp2040"
DEVICE=$(lsblk -o NAME,VENDOR | grep "$VENDOR" | awk '{print $1}')

if [ -n "$DEVICE" ]; then
    echo "Block device of vendor '$VENDOR' found: /dev/$DEVICE"
    echo "Unmounting everything from /dev/$DEVICE."
    umount -A "/dev/$DEVICE"

    echo "Toggling reset pin on RP2040..."
    sudo gpioset gpiochip1 60=1
    sudo gpioset gpiochip1 61=1
    sleep 1
    sudo gpioset gpiochip1 60=0
    sudo gpioset gpiochip1 61=0
    sleep 3
    
    echo "Mounting /dev/${DEVICE}1 to $MOUNTPOINT."
    if [ ! -d "$MOUNTPOINT" ]; then
        sudo mkdir -p "$MOUNTPOINT"
    fi
    sudo mount "/dev/${DEVICE}1" $MOUNTPOINT
else
    echo "No block device found for vendor '$VENDOR'"
fi