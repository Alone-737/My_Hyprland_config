#!/bin/bash
# Path to the mpv socket
SOCKET="/tmp/mpv-wallpaper-socket"

# Function to send commands to mpv
set_mute() {
    if [ -S "$SOCKET" ]; then
        echo "{\"command\": [\"set_property\", \"mute\", $1]}" | socat - "$SOCKET" > /dev/null 2>&1
    fi
}

# Listen to Hyprland events
socat - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do
    # Check if a window was focused
    if [[ "$line" == activewindowv2* ]]; then
        # Extract the window address
        window_address=$(echo "$line" | cut -d',' -f1 | sed 's/activewindowv2>>//')

        if [ -z "$window_address" ] || [ "$window_address" = "0x0" ]; then
            # No active window (Desktop is focused) -> UNMUTE
            set_mute "false"
        else
            # Window is focused -> MUTE
            set_mute "true"
        fi
    fi
done
