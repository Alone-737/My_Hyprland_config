# My Hyprland Config

This repository contains a personal Hyprland desktop setup with matching configs for the terminal, status bar, launcher, lock screen, logout menu, and system info display.

## What is Included

- [hypr/](hypr/) - Hyprland session config, Hyprlock config, startup scripts, and wallpapers
- [waybar/](waybar/) - Waybar config, styling, and helper scripts
- [wofi/](wofi/) - Application launcher config and styling
- [wlogout/](wlogout/) - Logout menu layout, styling, and assets
- [kitty/](kitty/) - Kitty terminal config and color theme
- [fastfetch/](fastfetch/) - Fastfetch config and logo assets

## Highlights

- Tilings via Hyprland with the `dwindle` layout
- Blur, rounded corners, and themed borders
- Waybar with workspace, window, battery, temperature, volume, mic, network, Bluetooth, tray, and power-profile widgets
- Wofi for app launching
- Hyprlock for the lock screen
- Wlogout for logout, lock, suspend, reboot, and shutdown actions
- Fastfetch for a custom system summary
- Terminal setup tuned for JetBrains Mono Nerd Font and a translucent Kitty window

## Repository Layout

```text
.
├── fastfetch/
│   ├── config.jsonc
│   └── theme/
├── hypr/
│   ├── hyprland.conf
│   ├── hyprlock.conf
│   ├── scripts/
│   └── wallpapers/
├── kitty/
│   ├── kitty.conf
│   ├── mocha.conf
│   └── theme.conf
├── waybar/
│   ├── config.jsonc
│   ├── style.css
│   └── scripts/
├── wlogout/
│   ├── layout
│   ├── style.css
│   └── assets/
└── wofi/
    ├── config
    └── style.css
```

## Requirements

Install the tools used by the config before copying anything into place:

```bash
hyprland
hyprlock
hyprpaper
hypridle
waybar
wofi
wlogout
kitty
fastfetch
swaybg
nm-applet
blueman-applet
polkit-gnome
pipewire
wireplumber
pipewire-pulse
grim
slurp
wl-clipboard
pamixer
brightnessctl
tlp
ryzenadj
asusctl
```

Some parts are hardware-specific:

- AMD and NVIDIA environment variables are already set in [hypr/hyprland.conf](hypr/hyprland.conf)
- The power-profile toggle script assumes `tlp-stat` and `sudo tlp setmode`
- The cool-down script assumes `ryzenadj`
- The laptop function-key binds use `asusctl`, `pamixer`, and `brightnessctl`

## Setup

1. Clone the repository.

```bash
git clone https://github.com/Alone-737/My_Hyprland_config.git
cd My_Hyprland_config
```

2. Back up any existing configs you want to keep.

```bash
cp -r ~/.config/hypr ~/.config/hypr.bak
cp -r ~/.config/waybar ~/.config/waybar.bak
cp -r ~/.config/kitty ~/.config/kitty.bak
cp -r ~/.config/wofi ~/.config/wofi.bak
cp -r ~/.config/wlogout ~/.config/wlogout.bak
cp -r ~/.config/fastfetch ~/.config/fastfetch.bak
```

3. Copy the configs into `~/.config`.

```bash
cp -r hypr ~/.config/
cp -r waybar ~/.config/
cp -r kitty ~/.config/
cp -r wofi ~/.config/
cp -r wlogout ~/.config/
cp -r fastfetch ~/.config/
```

4. Make sure the helper scripts are executable.

```bash
chmod +x hypr/scripts/*.sh
chmod +x waybar/scripts/*
```

5. Log out and start a new Hyprland session.

## Keybinds

The main modifier is `SUPER`.

| Shortcut            | Action                                             |
| ------------------- | -------------------------------------------------- |
| `SUPER + Enter`     | Open Kitty                                         |
| `SUPER + Q`         | Close the active window                            |
| `SUPER + L`         | Lock the session with Hyprlock                     |
| `SUPER + M`         | Open Wlogout                                       |
| `SUPER + Shift + M` | Exit Hyprland                                      |
| `SUPER + E`         | Open Thunar                                        |
| `SUPER + V`         | Toggle floating for the active window              |
| `SUPER + Space`     | Open Wofi                                          |
| `SUPER + P`         | Toggle pseudotile mode                             |
| `SUPER + J`         | Toggle split direction                             |
| `SUPER + S`         | Area screenshot to `~/Pictures/Screenshots`        |
| `SUPER + Shift + S` | Area screenshot to `~/Pictures/Screenshots`        |
| `Print`             | Area screenshot to `~/Pictures/Screenshots`        |
| `Shift + Print`     | Full-screen screenshot to `~/Pictures/Screenshots` |
| `Ctrl + Print`      | Copy area screenshot to clipboard                  |
| `F11`               | Toggle fullscreen                                  |
| `Ctrl + Shift + F`  | Disable fullscreen                                 |
| `SUPER + B`         | Refresh Waybar                                     |

Workspace and window movement are also bound to `SUPER + arrow keys`, `SUPER + 1-0`, and `SUPER + Shift + 1-0`.

## Notes

- Several paths in the configs point to `~/.config/...`; update them if your username or config path is different.
- The wallpapers and theme assets are bundled in the repo, so you should not need to fetch extra image files.
- If a script or bind does nothing, check file permissions and whether the required package is installed.
- `thunar` is used for the file manager bind, so install or replace it if you prefer a different file manager.

## Customization

Useful files to edit first:

- [hypr/hyprland.conf](hypr/hyprland.conf) for session behavior, startup apps, and keybinds
- [hypr/hyprlock.conf](hypr/hyprlock.conf) for the lock screen layout
- [waybar/config.jsonc](waybar/config.jsonc) and [waybar/style.css](waybar/style.css) for the bar
- [kitty/kitty.conf](kitty/kitty.conf) for terminal settings
- [wofi/config](wofi/config) and [wlogout/layout](wlogout/layout) for launcher and logout behavior
