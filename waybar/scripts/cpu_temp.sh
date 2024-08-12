#!/bin/bash

# Read CPU temperature from /sys/class/thermal/thermal_zone0/temp
temp=$(cat /sys/class/thermal/thermal_zone*/temp | awk '{print $1/1000}')

# Print the temperature with a degree symbol
echo "$temp°C"
