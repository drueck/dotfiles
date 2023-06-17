#!/bin/sh

if [[ ! -d ~/.asdf/plugins/elixir ]]; then
  echo "Installing asdf-elixir..."
  asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
else
  echo "asdf-elixir is installed."
fi
