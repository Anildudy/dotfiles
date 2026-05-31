#!/usr/bin/env bash
set -e

DOTFILES_DIR="$HOME/.mydotfiles/dotfiles"

echo ":: Installing packages..."
sudo pacman -S --needed - < "$DOTFILES_DIR/pkglist.txt"

# Bootstrap yay if not installed (needed for AUR packages)
if ! command -v yay &>/dev/null; then
  echo ":: Installing yay (AUR helper)..."
  sudo pacman -S --needed --noconfirm git base-devel
  git clone https://aur.archlinux.org/yay-bin.git /tmp/yay-bin
  (cd /tmp/yay-bin && makepkg -si --noconfirm)
  rm -rf /tmp/yay-bin
fi

yay -S --needed --noconfirm - < "$DOTFILES_DIR/pkglist-aur.txt"

echo ":: Creating symlinks..."
ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES_DIR/.Xresources" "$HOME/.Xresources"
ln -sf "$DOTFILES_DIR/.gtkrc-2.0" "$HOME/.gtkrc-2.0"

ln -sf "$DOTFILES_DIR/.config/bashrc" "$HOME/.config/bashrc"
ln -sf "$DOTFILES_DIR/.config/btop" "$HOME/.config/btop"
ln -sf "$DOTFILES_DIR/.config/chromium-flags.conf" "$HOME/.config/chromium-flags.conf"
ln -sf "$DOTFILES_DIR/.config/edge-flags.conf" "$HOME/.config/edge-flags.conf"
ln -sf "$DOTFILES_DIR/.config/fastfetch" "$HOME/.config/fastfetch"
ln -sf "$DOTFILES_DIR/.config/fish" "$HOME/.config/fish"
ln -sf "$DOTFILES_DIR/.config/gtk-3.0" "$HOME/.config/gtk-3.0"
ln -sf "$DOTFILES_DIR/.config/gtk-4.0" "$HOME/.config/gtk-4.0"
ln -sf "$DOTFILES_DIR/.config/hypr" "$HOME/.config/hypr"
ln -sf "$DOTFILES_DIR/.config/kitty" "$HOME/.config/kitty"
ln -sf "$DOTFILES_DIR/.config/matugen" "$HOME/.config/matugen"
ln -sf "$DOTFILES_DIR/.config/dotfiles-settings" "$HOME/.config/dotfiles-settings"
ln -sf "$DOTFILES_DIR/.config/dotfiles-settings-app" "$HOME/.config/dotfiles-settings-app"
ln -sf "$DOTFILES_DIR/.config/nwg-dock-hyprland" "$HOME/.config/nwg-dock-hyprland"
ln -sf "$DOTFILES_DIR/.config/ohmyposh" "$HOME/.config/ohmyposh"
ln -sf "$DOTFILES_DIR/.config/qt6ct" "$HOME/.config/qt6ct"
ln -sf "$DOTFILES_DIR/.config/quickshell" "$HOME/.config/quickshell"
ln -sf "$DOTFILES_DIR/.config/rofi" "$HOME/.config/rofi"
ln -sf "$DOTFILES_DIR/.config/sidepad" "$HOME/.config/sidepad"
ln -sf "$DOTFILES_DIR/.config/swaync" "$HOME/.config/swaync"
ln -sf "$DOTFILES_DIR/.config/walker" "$HOME/.config/walker"
ln -sf "$DOTFILES_DIR/.config/waybar" "$HOME/.config/waybar"
ln -sf "$DOTFILES_DIR/.config/waypaper" "$HOME/.config/waypaper"
ln -sf "$DOTFILES_DIR/.config/wlogout" "$HOME/.config/wlogout"
ln -sf "$DOTFILES_DIR/.config/xsettingsd" "$HOME/.config/xsettingsd"
ln -sf "$DOTFILES_DIR/.config/zshrc" "$HOME/.config/zshrc"

echo ":: Done! Reboot to apply."
