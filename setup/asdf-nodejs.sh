#!/bin/sh

if [[ ! -d ~/.asdf/plugins/nodejs ]]; then
  echo "Installing asdf-nodejs..."
  asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

  echo "Installing node 20.3.0..."
  asdf install nodejs 20.3.0
  asdf global nodejs 20.3.0
else
  echo "asdf-nodejs is installed."
fi
