#!/bin/bash
mode=$(tlp-stat -s | grep "TLP Mode" | awk '{print $3}')
if [ "$mode" = "Battery" ]; then
    sudo tlp setmode performance
else
    sudo tlp setmode battery
fi
echo $mode
