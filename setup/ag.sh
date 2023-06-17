#!/bin/sh

if ! command -v ag &> /dev/null; then
  echo "Installing ag (the silver searcher)..."
  brew install the_silver_searcher
else
  echo "Ag is installed."
fi
