#!/usr/bin/env bash
# App Theme Modern

# Set waybar
echo "/modern;/modern/default" > $HOME/.config/dotfiles-settings/settings/waybar-theme.sh
$HOME/.config/waybar/launch.sh &

# Set nwg-dock-hyprland
echo "modern" > $HOME/.config/dotfiles-settings/settings/dock-theme
$HOME/.config/nwg-dock-hyprland/launch.sh &

# Set swaync
echo '@import "themes/modern/style.css";' > $HOME/.config/swaync/style.css
swaync-client -rs

# Set launcher
echo 'walker' > $HOME/.config/dotfiles-settings/settings/launcher

# Set walker theme
echo 'modern' > $HOME/.config/dotfiles-settings/settings/walker-theme

# Set Window Border
echo 'source = ~/.config/hypr/conf/windows/border-2.conf' > $HOME/.config/hypr/conf/window.conf

# Set rofi
echo '* { border-width: 2px; }' > $HOME/.config/dotfiles-settings/settings/rofi-border.rasi

echo ":: Theme set to Modern"