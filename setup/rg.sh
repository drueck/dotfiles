#!/bin/sh

if ! command -v rg &> /dev/null; then
  echo "Installing ripgrep (rg)..."
  brew install ripgrep
else
  echo "ripgrep (rg) is installed"
fi
