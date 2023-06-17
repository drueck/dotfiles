#!/bin/sh

if [[ ! -d ~/.asdf/plugins/python ]]; then
  echo "Installing asdf-python..."
  brew install openssl readline sqlite3 xz zlib tcl-tk
  asdf plugin-add python
else
  echo "asdf-python is installed."
fi
