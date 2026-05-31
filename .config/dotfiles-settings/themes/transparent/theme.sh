#!/usr/bin/env bash
# App Theme Glass

# Set waybar
echo "/transparent-centered;/transparent-centered/default" > $HOME/.config/dotfiles-settings/settings/waybar-theme.sh
$HOME/.config/waybar/launch.sh &

# Set nwg-dock-hyprland
echo "transparent" > $HOME/.config/dotfiles-settings/settings/dock-theme
$HOME/.config/nwg-dock-hyprland/launch.sh &

# Set swaync
echo '@import "themes/glass/style.css";' > $HOME/.config/swaync/style.css
swaync-client -rs

# Set launcher
echo 'rofi' > $HOME/.config/dotfiles-settings/settings/launcher

# Set walker theme
echo 'glass' > $HOME/.config/dotfiles-settings/settings/walker-theme

# Set Window Border
echo 'source = ~/.config/hypr/conf/windows/transparent.conf' > $HOME/.config/hypr/conf/window.conf

# Set rofi
echo '* { border-width: 1px; }' > $HOME/.config/dotfiles-settings/settings/rofi-border.rasi

echo ":: Theme set to Transparent"