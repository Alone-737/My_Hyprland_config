#!/bin/bash

# Get list of running applications
APP_LIST=$(hyprctl clients -j | jq -r '.[] | "\(.class):\(.pid)"')

# Show selection menu
SELECTED=$(echo "$APP_LIST" | rofi -dmenu -p "Force Kill App" -i)

if [ -n "$SELECTED" ]; then
    PID=$(echo "$SELECTED" | cut -d':' -f2)
    kill -9 "$PID"
fi