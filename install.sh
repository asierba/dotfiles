#!/bin/sh

echo "Installing scripts and config files..."

echo ""
echo "(Re)creating a symbolic link for each script to point to them from the ~ folder..."
cd scripts
ls * | xargs -I {}  ln -fs $(pwd)/{} /usr/local/bin/{} 
cd -

# import aliases (if they haven't been already)
if ! grep -q "source $(pwd)/.zshrc" ~/.zshrc; then
    echo "importing custom .zshrc in main .zshrc file.."
    echo "backing up.. ~/.zshrc.bak"
    cp ~/.zshrc ~/.zshrc.bak
    echo "source $(pwd)/.zshrc" >> ~/.zshrc
fi

cp -nv .vimrc ~/.vimrc
 

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