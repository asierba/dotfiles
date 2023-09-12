#!/bin/sh

## Install Mac apps & tools 
## Based on: https://github.com/SamirTalwar/fygm

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# shell
brew install --cask iterm2
brew install \
  z \
  wget \
  zsh \
  watch \
  tldr \
  bat \
  fzf \
  htop \
  diff-so-fancy \
  jq

# ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# development
brew install \
  git \
  node \
  ruby \
  docker \
  docker-compose \
  awscli \
  terraform \
  gh

# zsh theme powerlevel10k
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

# js
brew install corepack \
  nvm

brew install --cask \
    sublime-text \
    visual-studio-code
brew install --cask intellij-idea-ce
brew install --cask webstorm


# sdk man
curl -s "https://get.sdkman.io" | bash

# Java Development
brew tap pivotal/tap
brew install \
  gradle \
  maven

# Mac stuff
brew install --cask \
  rectangle \
  beardedspice \
  caffeine

# Miscellaneous
brew install --cask slack
brew install --cask spotify
brew install --cask vlc
brew install --cask skype
brew install --cask flux
brew install --cask google-backup-and-sync
brew install --cask google-chrome
brew install --cask brave-browser
brew install --cask 1password
brew install --cask zoom
brew install --cask calibre
brew install --cask readdle-spark # todo clarify
brew install --cask tomatobar
brew install --cask signal
brew install syncthing
brew install --cask tor-browser
brew install --cask the-unarchiver
brew install --cask obsidian

brew cleanup

