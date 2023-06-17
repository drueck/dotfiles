#!/bin/sh

if ! command -v yarn &> /dev/null; then
  echo "Installing yarn..."
  brew install yarn
else
  echo "Yarn is installed."
fi
