#!/bin/sh

if ! command -v fd &> /dev/null; then
  echo "Installing fd..."
  brew install fd
else
  echo "fd is installed"
fi
