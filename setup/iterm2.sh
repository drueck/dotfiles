#!/bin/sh

if [[ ! -d /Applications/iTerm.app ]]; then
  echo "Installing iTerm2..."
  brew install --cask iterm2
else
  echo "iTerm2 is installed."
fi
