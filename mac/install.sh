## Install Mac apps & tools 
## Based on: https://github.com/SamirTalwar/fygm

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# shell
brew install \
  autojump \
  wget \
  zsh

# development
brew install \
  git \
  node

# Java Development
brew cask install java
brew install \
  gradle \
  maven
brew cask install intellij-idea

brew cleanup