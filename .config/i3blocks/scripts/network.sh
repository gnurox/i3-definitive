#!/bin/bash

SSID=$(iwgetid -r)
IP=$(ip -4 addr show wlan0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

# get signal strength (0–100)
SIGNAL=$(grep 'wlan0' /proc/net/wireless | awk '{print int($3 * 100 / 70)}')

# fallback if not connected
if [ -z "$SSID" ]; then
  echo "WLAN: disconnected"
  exit 0
fi

# color logic
if [ "$SIGNAL" -gt 50 ]; then
  COLOR="#00FF00"
else
  COLOR="#FFFF00"
fi

echo "WLAN: $SSID ($SIGNAL%) IP: $IP"
echo ""
echo "$COLOR" 
