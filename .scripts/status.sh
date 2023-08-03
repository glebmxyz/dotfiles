#!/bin/sh

while true; do
    date="$(date +'%a %d/%m %H:%M:%S')"
    BAT1='/sys/class/power_supply/BAT1'
    battery_charge="$(cat $BAT1/capacity)"
    battery_status="$(cat $BAT1/status)"

    xprop -root -set WM_NAME "$date || $battery_charge% $battery_status"
    sleep 1
done
