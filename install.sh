#!/bin/sh

echo "Installing scripts and config files..."

echo ""
echo "(Re)creating a symbolic link for each script to point to them from the ~ folder..."
cd scripts
ls * | xargs -I {} sudo ln -fs $(pwd)/{} /usr/local/bin/{}
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


# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Brew packages
brew bundle

# Install sdk man
curl -s "https://get.sdkman.io" | bash

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# zsh theme powerlevel10k
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
