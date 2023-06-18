#!/bin/sh

if ! command -v prettier &> /dev/null; then
  echo "Installing prettier..."
  npm install -g prettier
else
  echo "Prettier is installed."
fi
