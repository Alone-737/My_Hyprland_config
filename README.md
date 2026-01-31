My Hyprland Config

Personal configuration for Hyprland, a dynamic tiling Wayland compositor optimized for productivity, aesthetics, and ease of use.

This config includes everything from a terminal setup to a status bar, file manager enhancements, wallpapers, lock screen, and system utilities.

Features

Hyprland – Modern, dynamic tiling Wayland compositor

Kitty – Fast, GPU-accelerated terminal with custom fonts

Waybar – Highly configurable status bar

Thunar – Lightweight file manager with archive plugin support

GVFS & MTP – File system integration for removable devices

Hyprpaper – Wallpaper management for multiple monitors

Hyprlock – Screen locking utility

Fastfetch – Fetch system information in the terminal

Brightness & Audio Control – via brightnessctl and pamixer

Network & Bluetooth Tools – network-manager-applet and blueman

Fonts – JetBrains Mono Nerd Font, Font Awesome icons

Installation

Install all required packages on Arch Linux / Manjaro with:

sudo pacman -S hyprland kitty waybar thunar thunar-archive-plugin gvfs gvfs-mtp fastfetch hyprlock hyprpaper brightnessctl pamixer libpulse network-manager-applet blueman ttf-jetbrains-mono-nerd otf-font-awesome


This command ensures you have all the essential tools for the configuration to work correctly.

Usage

Copy the configuration files to:

~/.config/hypr/


Start Hyprland from your login manager or from a TTY:

hyprland


Your environment should now be fully set up with custom themes, bar, and system tools.

Optional Enhancements

These are not required but can improve your experience:

dmenu / wofi – App launcher

neofetch – Display system information on terminal startup

polkit / pam authentication – For GUI tools requiring root privileges

Extra themes & wallpapers – To customize look and feel

Notes

Make sure your GPU drivers support Wayland.

Fonts and icons are necessary for proper display of terminals, bar, and menus.

Adjust the configuration files in ~/.config/hypr/ to your personal preference.
