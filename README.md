# My Hyprland Config

Personal, clean, and productive **Hyprland** setup – a dynamic tiling Wayland compositor built for daily driving with great looks and zero bloat.

Focus: Productivity + Aesthetics + Simplicity  
(Arch Linux optimized – works great on AMD/Intel GPUs)

![Hyprland Screenshot](https://github.com/Alone-737/My_Hyprland_config/raw/main/a137919a3a5a48f55afda26fdcca2b8b.png)  
*(My current desktop – clean Waybar, Kitty, multi-monitor Hyprpaper wallpaper)*

![Wallpaper Example](https://github.com/Alone-737/My_Hyprland_config/raw/main/cat_leaves.png)  
*(One of the wallpapers included – feel free to swap!)*

## Features

- **Hyprland** → Smooth dynamic tiling with animations & blur  
- **Kitty** → Fast GPU-accelerated terminal + ligatures  
- **Waybar** → Modern, modular status bar (CPU, memory, network, etc.)  
- **Thunar** → Lightweight file manager + archive plugins  
- **GVFS & MTP** → Seamless USB/phone mounting  
- **Hyprpaper** → Easy multi-monitor wallpaper switching  
- **Hyprlock** → Sleek screen locker  
- **Fastfetch** → Stylish system info in terminal  
- **Controls** → Brightness (brightnessctl), Volume (pamixer)  
- **Networking** → NetworkManager tray + Blueman Bluetooth  
- **Fonts & Icons** → JetBrains Mono Nerd Font + Font Awesome  

Everything pre-configured in `~/.config/` for immediate usability.


# ───────────────────────────────────────────────────────────────
# Hyprland Keybinds Configuration
# Main modifier key used for most shortcuts
$mainMod = SUPER

# For more information about syntax and available dispatchers:
# https://wiki.hyprland.org/Configuring/Keywords/
# https://wiki.hyprland.org/Configuring/Binds/
# https://wiki.hyprland.org/Configuring/Dispatchers/
# ───────────────────────────────────────────────────────────────

# Basic window & session management
bind = $mainMod,         Q,         killactive,           # Close the active/focused window
bind = $mainMod SHIFT,   Q,         exec, wlogout         # Show logout/power menu (alternative binding)
bind = $mainMod,         M,         exec, wlogout --protocol layer-shell  # Show logout/power menu (layer-shell version)
bind = $mainMod SHIFT,   M,         exit,                 # Completely exit Hyprland (log out of the session)
bind = $mainMod,         L,         exec, pidof hyprlock || hyprlock  # Lock the screen (only starts if not already running)

# Launchers & applications
bind = CTRL+ALT,         T,         exec, kitty           # Open terminal
bind = $mainMod,         E,         exec, thunar          # Open file manager
bind = $mainMod,         SPACE,     exec, wofi            # Open application launcher (wofi)

# Window layout & state toggles
bind = $mainMod,         V,         togglefloating,       # Toggle floating mode for the focused window
bind = $mainMod,         P,         pseudo,               # Toggle pseudo-tile (dwindle layout)
bind = $mainMod,         J,         togglesplit,          # Toggle split direction (dwindle layout)
bind = $mainMod,         F11,       fullscreen, 1         # Toggle fullscreen (keep borders/gaps)
bind = CTRL SHIFT,       F,         fullscreen, 0         # Toggle true fullscreen (no borders/gaps)

# Focus movement (vim-style arrow keys)
bind = $mainMod, left,  movefocus, l
bind = $mainMod, right, movefocus, r
bind = $mainMod, up,    movefocus, u
bind = $mainMod, down,  movefocus, d

# Workspace switching (mainMod + number)
bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

# Move focused window to workspace (mainMod + SHIFT + number)
bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9
bind = $mainMod SHIFT, 0, movetoworkspace, 10

# Mouse wheel workspace scrolling
bind = $mainMod, mouse_down, workspace, e+1
bind = $mainMod, mouse_up,   workspace, e-1

# Mouse window dragging (hold mainMod + mouse button)
bindm = $mainMod, mouse:272, movewindow     # Left mouse button   → move window
bindm = $mainMod, mouse:273, resizewindow   # Right mouse button  → resize window

# ───────────────────────────────────────────────────────────────
# Screenshots (using slurp + grim)
# ───────────────────────────────────────────────────────────────

# Select area → save to ~/Pictures/Screenshots/
bind = $mainMod,       S, exec, slurp -d | grim -g - ~/Pictures/Screenshots/shot-$(date +%F_%H-%M-%S).png
bind = $mainMod SHIFT, S, exec, slurp -d | grim -g - ~/Pictures/Screenshots/shot-$(date +%F_%H-%M-%S).png

# PrtSc (Print) key → same as above
bind = , Print, exec, slurp -d | grim -g - ~/Pictures/Screenshots/shot-$(date +%F_%H-%M-%S).png

# Shift + PrtSc → fullscreen screenshot
bind = SHIFT, Print, exec, grim ~/Pictures/Screenshots/full-$(date +%F_%H-%M-%S).png

# Ctrl + PrtSc → select area → copy to clipboard
bind = CTRL, Print, exec, slurp -d | grim -g - - | wl-copy

# ───────────────────────────────────────────────────────────────
# Acer Nitro V 15-41 / ASUS specific hardware keys
# (keycodes may vary — these are common for many 2024/2025 ASUS laptops)
# ───────────────────────────────────────────────────────────────

bind = ,211,  exec, asusctl profile -n; pkill -SIGRTMIN+8 waybar      # Fn + ?  → Cycle power/fan profile
bind = ,121,  exec, pamixer -t                                        # Fn+F1   → Mute speakers
bind = ,122,  exec, pamixer -d 5                                      # Vol-    → Volume down 5%
bind = ,123,  exec, pamixer -i 5                                      # Vol+    → Volume up 5%
bind = ,256,  exec, pamixer --default-source -t                       # Mic mute key
bind = ,232,  exec, brightnessctl set 10%-                            # Fn+F7   → Brightness down
bind = ,233,  exec, brightnessctl set 10%+                            # Fn+F8   → Brightness up
bind = ,237,  exec, brightnessctl -d asus::kbd_backlight set 33%-     # Fn+F2   → Keyboard backlight down
bind = ,238,  exec, brightnessctl -d asus::kbd_backlight set 33%+     # Fn+F3   → Keyboard backlight up

# ───────────────────────────────────────────────────────────────
# Extra / utility binds
# ───────────────────────────────────────────────────────────────

bind = $mainMod, B, exec, pkill -SIGUSR1 waybar   # Restart waybar (useful after config changes)



## Quick Install (Arch )

```bash
# Core packages (required)
sudo pacman -S hyprland kitty waybar thunar thunar-archive-plugin gvfs gvfs-mtp \
    fastfetch hyprlock hyprpaper brightnessctl pamixer network-manager-applet blueman \
    ttf-jetbrains-mono-nerd otf-font-awesome

# Strongly recommended extras (2026 best practices)
sudo pacman -S xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-gnome hypridle wofi
