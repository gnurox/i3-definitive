#!/bin/bash
TEMP=$(sensors | awk '/Package id 0:/ {print $4}')
echo "Temp: $TEMP"
