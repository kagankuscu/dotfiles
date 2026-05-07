#!/bin/bash

echo "Installing packaging"
sudo pacman -S --needed - < packages/pkglist.txt

echo "Installing AUR packaging"
yay -S --needed - < packages/aur-pkglist.txt

echo "Creating links with stow"
cd ~/.dotfiles
stow git zsh kitty starship helix

echo "Finished! 🎉"
