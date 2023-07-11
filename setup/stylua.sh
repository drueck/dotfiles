#!/bin/sh

if ! command -v stylua &> /dev/null; then
  echo "Installing stylua..."
  brew install stylua
else
  echo "Stylua is installed."
fi
