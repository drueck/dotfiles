#!/bin/sh

if [[ ! -d ~/.asdf/plugins/python ]]; then
  echo "Installing asdf-python..."
  brew install openssl readline sqlite3 xz zlib tcl-tk
  asdf plugin-add python

  echo "Installing python 3.11.4..."
  asdf install python 3.11.4
  asdf global python 3.11.4
else
  echo "asdf-python is installed."
fi
