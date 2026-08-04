#!/bin/sh

if [[ ! -d /Applications/Ghostty.app ]]; then
  echo "Installing Ghostty..."
  brew install --cask ghostty
else
  echo "Ghostty is installed."
fi

if [[ ! -f ~/.config/ghostty/config ]]; then
  echo "Linking Ghostty config..."
  mkdir -p ~/.config/ghostty
  ln -sf ~/projects/dotfiles/files/config/ghostty/config ~/.config/ghostty/config
else
  echo "Ghostty config is linked."
fi
