#!/bin/sh

while true; do
    if [ -e /sys/class/power_supply/BAT0/capacity ]; then
        # Battery exists, display battery status
        battery=$(cat /sys/class/power_supply/BAT0/capacity)%[$(cat /sys/class/power_supply/BAT0/status)]
        status="$battery | $(date +"%Y-%m-%d %H:%M")"
    else
        # Battery doesn't exist, just display time
        status="$(date +"%Y-%m-%d %H:%M")"
    fi
    xsetroot -name "$status"
    sleep 1
done
