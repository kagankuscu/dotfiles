#!/bin/bash

echo "Installing packaging"
# sudo pacman -S --needed - < packages/pkglist.txt
sudo pacman -S --needed - < packages/mytools.txt

echo "Installing AUR packaging"
yay -S --needed - < packages/aur-pkglist.txt

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Oh My Zsh installing"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo "Creating links with stow"
cd ~/.dotfiles
stow git zsh kitty starship helix

echo "Finished! 🎉"
