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
  heroku/brew/heroku \
  awscli \
  terraform
brew install --cask \
    sublime-text \
    visual-studio-code

# sdk man
curl -s "https://get.sdkman.io" | bash

# Java Development
brew install --cask adoptopenjdk
brew tap pivotal/tap
brew install \
  gradle \
  maven
brew install --cask intellij-idea-ce

# Haskell
brew install ghc

# Mac stuff
brew install --cask \
  spectacle \
  beardedspice \
  caffeine

# Miscellaneous
brew install --cask slack
brew install --cask spotify
brew install --cask vlc
brew install --cask skype
brew install --cask flux
brew install --cask google-backup-and-sync
brew install --cask dropbox
brew install --cask google-chrome
brew install --cask 1password
brew install --cask zoom

brew cleanup

