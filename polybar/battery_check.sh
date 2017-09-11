#!/bin/bash
battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
if [ $battery_level -le 10 ]; then
    notify-send "Low Battery" "$battery_level remain." -u critical -a "Battery_Check"
fi
