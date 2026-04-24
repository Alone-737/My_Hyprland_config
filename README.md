# My Hyprland Config

Personal Linux desktop configuration based on Hyprland, with themed components for terminal, launcher, lock screen, status bar, and logout menu.

## Included Components

- `hypr/`: Hyprland and Hyprlock configuration, scripts, wallpapers
- `waybar/`: Waybar config, style, and helper scripts
- `wofi/`: Launcher config and styling
- `wlogout/`: Logout menu layout, style, and assets
- `kitty/`: Kitty terminal config and themes
- `fastfetch/`: Fastfetch config and theme assets
- `gtk-3.0/`: GTK settings

## Repository Layout

```text
.
├── fastfetch/
├── gtk-3.0/
├── hypr/
│   ├── hyprland.conf
│   ├── hyprlock.conf
│   ├── scripts/
│   └── wallpapers/
├── kitty/
├── waybar/
├── wlogout/
└── wofi/
```

## Quick Setup

1. Clone this repo:

	```bash
	git clone https://github.com/Alone-737/My_Hyprland_config.git
	cd My_Hyprland_config
	```

2. Back up your existing configs:

	```bash
	cp -r ~/.config/hypr ~/.config/hypr.bak
	cp -r ~/.config/waybar ~/.config/waybar.bak
	cp -r ~/.config/kitty ~/.config/kitty.bak
	cp -r ~/.config/wofi ~/.config/wofi.bak
	cp -r ~/.config/wlogout ~/.config/wlogout.bak
	```

3. Copy configs into place:

	```bash
	cp -r hypr ~/.config/
	cp -r waybar ~/.config/
	cp -r kitty ~/.config/
	cp -r wofi ~/.config/
	cp -r wlogout ~/.config/
	cp -r fastfetch ~/.config/
	cp -r gtk-3.0 ~/.config/
	```

4. Restart Hyprland (or log out and log in again).

## Notes

- Paths and scripts are tuned for this setup and may need adjustment for your system.
- Make sure required programs are installed (`hyprland`, `waybar`, `wofi`, `kitty`, `wlogout`, `hyprlock`, `fastfetch`).
- If keybinds or scripts do not work, check executable permissions in script folders.
