#!/bin/sh

if ! command -v nvim &> /dev/null; then
  echo "Installing neovim"
  brew install neovim
else
  echo "Neovim is installed."
fi
