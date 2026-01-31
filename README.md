# My Hyprland Config

Personal, clean, and productive **Hyprland** setup – a dynamic tiling Wayland compositor built for daily driving with great looks and zero bloat.

Focus: Productivity + Aesthetics + Simplicity  
(Arch Linux / Manjaro optimized – works great on AMD/Intel GPUs)

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

## Quick Install (Arch )

```bash
# Core packages (required)
sudo pacman -S hyprland kitty waybar thunar thunar-archive-plugin gvfs gvfs-mtp \
    fastfetch hyprlock hyprpaper brightnessctl pamixer network-manager-applet blueman \
    ttf-jetbrains-mono-nerd otf-font-awesome

# Strongly recommended extras (2026 best practices)
sudo pacman -S xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-gnome hypridle wofi
