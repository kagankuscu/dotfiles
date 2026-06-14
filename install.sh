#!/usr/bin/env bash

echo "Installing packaging"
# sudo pacman -S --needed - < packages/pkglist.txt
sudo pacman -S --needed - < packages/mytools.txt

echo "Installing AUR packaging"
# yay -S --needed - < packages/aur-pkglist.txt
yay -S --needed - < packages/my-aur-pkglist.txt

# if [ ! -d "$HOME/.oh-my-zsh" ]; then
#   echo "Oh My Zsh installing"
#   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# fi

echo "Creating links with stow"
cd ~/.dotfiles
stow git bash kitty starship helix yazi opencode

# zsh_plugin=/usr/share/zsh/plugins

# if [ -d "$zsh_plugin/zsh-autosuggestions" ]; then
#   echo "Zsh Autosuggestion moving..."
#   sudo mv "$zsh_plugin/zsh-autosuggestions" "$HOME/.oh-my-zsh/plugins"
# fi

# if [ -d "$zsh_plugin/zsh-syntax-highlighting" ]; then
#   echo "Zsh Syntax Highlihting moving..."
#   sudo mv "$zsh_plugin/zsh-syntax-highlighting" "$HOME/.oh-my-zsh/plugins"
# fi

echo "Updated shell"
# source ~/.zshrc
source ~/.bashrc

echo "Finished! 🎉"
