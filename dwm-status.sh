#!/bin/sh

while true; do
    battery=$(cat /sys/class/power_supply/BAT0/capacity)%[$(cat /sys/class/power_supply/BAT0/status)]
    time=$(date +"%Y-%m-%d %H:%M")
    xsetroot -name "$battery | $time"
    # sleep $((60 - $(date +%S)))
    sleep 1
done

