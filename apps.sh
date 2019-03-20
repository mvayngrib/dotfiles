#!/bin/bash

apps=(
  dropbox
  firefox
  google-chrome
  visual-studio-code
  vlc
  skype
  zoomus
  flux
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps with Cask..."
brew cask install --appdir="/Applications" ${apps[@]}
brew cask cleanup
brew cleanup
