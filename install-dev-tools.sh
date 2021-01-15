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
  tldr
# ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# development
brew install \
  git \
  node \
  ruby \
  docker \
  docker-compose \
  heroku/brew/heroku
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

# Haskell
brew install ghc

# Mac stuff
brew install --cask \
  spectacle \
  beardedspice \
  caffeine

# Other stuff 
brew install --cask slack
brew install --cask spotify

brew cleanup

