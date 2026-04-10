#!/bin/bash

VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -o '[0-9]\+%' | head -1)
MUTE=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

if [ "$MUTE" = "yes" ]; then
  echo "VOL muted"
  echo ""
  echo "#FFFF00"
else
  echo "VOL $VOL"
fi
