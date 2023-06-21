#!/bin/sh

bl_dev=/sys/class/backlight/amdgpu_bl0  # Modify device path to meet your brand

ratio=$(echo $(<$bl_dev/brightness) / $(<$bl_dev/max_brightness) | bc -l)
xrandr --output eDP --brightness $ratio
