#!/bin/bash

APP_NAME="$1"

# Apps that need force kill (run in background)
FORCE_KILL_APPS=("discord" "steam" "spotify" "slack" "teams")

# Check if app needs force kill
NEED_FORCE_KILL=false
for app in "${FORCE_KILL_APPS[@]}"; do
    if [[ "$APP_NAME" == *"$app"* ]]; then
        NEED_FORCE_KILL=true
        break
    fi
done

if [ "$NEED_FORCE_KILL" = true ]; then
    # Force kill the app
    killall -9 "$APP_NAME" 2>/dev/null || pkill -9 -i "$APP_NAME"
else
    # Normal close
    hyprctl dispatch closewindow address:$2 2>/dev/null
fi