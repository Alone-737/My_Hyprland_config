# My Hyprland Config

> A batteries-included Hyprland rice for Arch — zero bloat, maximum productivity.

Personal, clean, and productive **Hyprland** setup – a dynamic tiling Wayland compositor built for daily driving with great looks and zero bloat.

**Focus:** Productivity + Aesthetics + Simplicity  
**Optimized for:** Arch Linux (works great on AMD/Intel GPUs)

![Hyprland Screenshot](https://github.com/Alone-737/My_Hyprland_config/raw/main/a137919a3a5a48f55afda26fdcca2b8b.png)  
*My current desktop – clean Waybar, Kitty, multi-monitor Hyprpaper wallpaper*

![Wallpaper Example](https://github.com/Alone-737/My_Hyprland_config/raw/main/cat_leaves.png)  
*One of the wallpapers included – feel free to swap!*

---

## ✨ Features

- **Hyprland** → Smooth dynamic tiling with animations & blur  
- **Kitty** → Fast GPU-accelerated terminal with ligature support  
- **Waybar** → Modern, modular status bar (CPU, memory, network, volume)  
- **Thunar** → Lightweight file manager with archive plugin support  
- **GVFS & MTP** → Seamless USB/phone mounting  
- **Hyprpaper** → Easy multi-monitor wallpaper switching  
- **Hyprlock** → Sleek screen locker  
- **Hypridle** → Automatic screen locking on idle
- **Wlogout** → Stylish logout menu  
- **Wofi** → Fast app launcher  
- **Fastfetch** → Stylish system info display  
- **Hardware Controls** → Brightness (brightnessctl), Volume (pamixer)  
- **Networking** → NetworkManager tray + Blueman Bluetooth  
- **Fonts & Icons** → JetBrains Mono Nerd Font + Font Awesome  

Everything pre-configured in `~/.config/` for immediate usability.

---

## 🚀 Quick Install (Arch Linux)

### 1. Install Required Packages
```bash
# Core packages from official repos
sudo pacman -S hyprland kitty waybar thunar thunar-archive-plugin gvfs gvfs-mtp \
    fastfetch hyprlock hyprpaper hypridle brightnessctl pamixer \
    network-manager-applet blueman ttf-jetbrains-mono-nerd otf-font-awesome \
    xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-gnome wofi

# AUR packages (requires yay or paru)
yay -S wlogout

# If you don't have yay installed:
# sudo pacman -S --needed git base-devel
# git clone https://aur.archlinux.org/yay.git
# cd yay
# makepkg -si
```

### 2. Clone This Repository
```bash
# Backup your existing configs first!
mv ~/.config/hypr ~/.config/hypr.backup 2>/dev/null
mv ~/.config/waybar ~/.config/waybar.backup 2>/dev/null
mv ~/.config/kitty ~/.config/kitty.backup 2>/dev/null
mv ~/.config/hypr ~/.config/hypr.backup 2>/dev/null

# Clone the repo
git clone https://github.com/Alone-737/My_Hyprland_config.git ~/hyprland-config

# Copy configs to their proper locations
cp -r ~/hyprland-config/hypr ~/.config/
cp -r ~/hyprland-config/waybar ~/.config/
cp -r ~/hyprland-config/kitty ~/.config/
cp -r ~/hyprland-config/wofi ~/.config/
cp -r ~/hyprland-config/wlogout ~/.config/
# Add other config directories as needed
```

### 3. Launch Hyprland
```bash
# From TTY
Hyprland

# Or add to your display manager
```

---

## ⌨️ Keybinding Cheat Sheet

**Note:** `$mainMod` = `SUPER` (Windows key)

### Window & Apps

| Action              | Keybind                |
|---------------------|------------------------|
| Close window        | `Super + Q`            |
| Lock screen         | `Super + L`            |
| Launch apps (wofi)  | `Super + Space`        |
| Open file browser   | `Super + E`            |
| Open terminal       | `Ctrl + Alt + T`       |

### Power & Logout

| Action              | Keybind                |
|---------------------|------------------------|
| Logout menu (wlogout) | `Super + M`          |
| Exit Hyprland       | `Super + Shift + M`    |
| Alt logout menu     | `Super + Shift + Q`    |

### Workspace Management

| Action                    | Keybind                |
|---------------------------|------------------------|
| Switch to workspace 1-9   | `Super + [1-9]`        |
| Move window to workspace  | `Super + Shift + [1-9]`|
| Cycle workspaces          | `Super + Scroll`       |

### Window Layouts

| Action              | Keybind                |
|---------------------|------------------------|
| Toggle floating     | `Super + V`            |
| Dwindle layouts     | `Super + P / J`        |
| Fullscreen toggle   | `Super + F11` or `Ctrl + Shift + F` |

### Screenshots

| Action              | Keybind                |
|---------------------|------------------------|
| Area screenshot     | `Super + S` or `Super + Shift + S` |
| Fullscreen shot     | `Print` or `Shift + Print` |
| Copy to clipboard   | `Ctrl + Print`         |

### Hardware / Function Keys

Brightness, volume, mic mute, keyboard backlight controls are mapped to standard Fn keys (tested on Acer Nitro V15).

### Waybar

| Action              | Keybind                |
|---------------------|------------------------|
| Refresh Waybar      | `Super + B`            |

**Full reference:** See [Hyprland Keybinds Documentation](https://wiki.hyprland.org/Configuring/Binds/)

---

## 🛠️ Troubleshooting

### Waybar not showing?
Check if config exists:
```bash
ls ~/.config/waybar/config
```
Restart Waybar: `Super + B`

### Wlogout not working?
Make sure it's installed from AUR:
```bash
yay -S wlogout
```

### Screen tearing?
Enable VRR in `~/.config/hypr/hyprland.conf`:
```conf
misc {
    vrr = 1
}
```

### Multi-monitor issues?
See the [Hyprland Multi-Monitor Guide](https://wiki.hyprland.org/Configuring/Monitors/)

### Fonts look broken?
Make sure Nerd Fonts are installed:
```bash
fc-list | grep -i jetbrains
```

### Screenshots not working?
Install grim and slurp:
```bash
sudo pacman -S grim slurp
```

---

## 📦 Complete Package List

### Official Repos (pacman)
- hyprland
- kitty
- waybar
- thunar + thunar-archive-plugin
- gvfs + gvfs-mtp
- hyprlock + hyprpaper + hypridle
- brightnessctl + pamixer
- network-manager-applet + blueman
- ttf-jetbrains-mono-nerd + otf-font-awesome
- xdg-desktop-portal-hyprland
- qt5-wayland + qt6-wayland
- polkit-gnome
- wofi
- fastfetch
- grim + slurp (for screenshots)

### AUR (yay/paru)
- wlogout

---

## 📝 Customization

- **Wallpapers:** Stored in `~/Pictures/Wallpapers/` (change path in `hyprpaper.conf`)
- **Waybar:** Edit `~/.config/waybar/config` and `style.css`
- **Keybinds:** Modify `~/.config/hypr/hyprland.conf`
- **Terminal theme:** Check `~/.config/kitty/kitty.conf`
- **Logout menu:** Customize `~/.config/wlogout/layout` and `style.css`
- **App launcher:** Edit `~/.config/wofi/style.css`

---

## 📄 License

feel free to fork, modify, and share!

---

## ⭐ Support

If this config saved you hours of tinkering, consider dropping a star! It helps others discover this setup.

**Issues?** Open a ticket on [GitHub Issues](https://github.com/Alone-737/My_Hyprland_config/issues)

---

**Enjoy your new Hyprland setup! 🚀**
