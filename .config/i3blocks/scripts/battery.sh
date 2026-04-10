#!/bin/bash
BAT=$(cat /sys/class/power_supply/BAT*/capacity)
STATUS=$(cat /sys/class/power_supply/BAT*/status)

TIME=$(acpi -b | grep -o '[0-9]\+:[0-9]\+')

echo "BAT $BAT% $TIME"
