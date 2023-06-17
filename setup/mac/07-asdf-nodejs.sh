#!/bin/sh

if [[ ! -d ~/.asdf/plugins/nodejs ]]; then
  echo "Installing asdf-nodejs..."
  asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
else
  echo "asdf-nodejs is installed."
fi
