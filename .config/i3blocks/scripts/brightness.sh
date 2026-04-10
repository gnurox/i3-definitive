#!/bin/bash
BR=$(brightnessctl g)
MAX=$(brightnessctl m)

PERCENT=$((BR * 100 / MAX))
echo "Brightness: $PERCENT%"
