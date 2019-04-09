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
  z \
  wget \
  zsh \
  watch

# development
brew install \
  git \
  node \
  ruby \
  docker \ 
  docker-compose \
  heroku/brew/heroku \
  Kubectl \ 
  dbeaver-community
brew cask install sublime-text

# Java Development
brew cask install java
brew tap pivotal/tap
brew install \
  gradle \
  maven \ 
  springboot

# Haskell
brew install ghc

# Mac stuff
brew cask install spectacle 
brew cask install beardedspice
brew cask install caffeine

brew cleanup
