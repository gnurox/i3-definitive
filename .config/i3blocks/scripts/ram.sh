#!/bin/bash
free -h --giga | awk '/^Mem:/ {print "RAM " $3 "/" $2}'
