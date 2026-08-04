#!/bin/sh

if [[ ! -d /Applications/iTerm.app ]]; then
  echo "Installing iTerm2..."
  brew install --cask iterm2
  echo "Importing rose-pine color preset into iTerm2..."
  open ~/projects/dotfiles/files/rose-pine.itermcolors
else
  echo "iTerm2 is installed."
fi
