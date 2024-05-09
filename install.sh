#!/bin/sh

## Install scripts, aliases and configs ##
# Install scripts/
cd scripts
ls * | xargs -I {} sudo ln -fs $(pwd)/{} /usr/local/bin/{}
cd -

# Import aliases
if ! grep -q "source $(pwd)/.zshrc" ~/.zshrc; then
    cp ~/.zshrc ~/.zshrc.bak
    echo "source $(pwd)/.zshrc" >> ~/.zshrc
fi

# Configure Vim & git
# cp -nv .vimrc ~/.vimrc
ln -sf $PWD/.gitconfig ~/.gitconfig
ln -sf $PWD/.gitignore ~/.gitignore
ln -sf $PWD/.vimrc ~/.vimrc

## Install apps ##
# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Brew packages
brew bundle

## Install apss outside of brew ##
# Install sdk man
curl -s "https://get.sdkman.io" | bash

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh theme powerlevel10k
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

## Mac configs ##
# Configure finder to open current users folder by default
defaults write com.apple.finder NewWindowTarget -string "PfHm"

# Dock
defaults write com.apple.dock orientation left
defaults write com.apple.dock static-only -bool TRUE
defaults write com.apple.dock "tilesize" -int "24"
defaults write com.apple.dock largesize -int 128
defaults write com.apple.dock mineffect suck
killall Dock