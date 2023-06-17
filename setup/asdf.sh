#!/bin/sh

if [[ ! -d ~/.asdf ]]; then
  echo "Installing asdf."
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0

  echo "Adding code to activate asdf to your .zshrc.local..."
  echo '. "$HOME/.asdf/asdf.sh"' >> ~/.zshrc.local
else
  echo "asdf is installed."
fi

