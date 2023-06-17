#!/bin/sh

if [[ ! -d ~/.asdf ]]; then
  echo "Installing asdf."
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0
else
  echo "asdf is installed."
fi
