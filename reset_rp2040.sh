#!/bin/bash

echo "Toggling reset pin on RP2040..."
sudo gpioset gpiochip1 60=1
sleep 1
sudo gpioset gpiochip1 60=0
sleep 3
echo "RP2040 running in flash boot mode..."