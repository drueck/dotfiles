#!/bin/sh

if [[ -d ~/.asdf/plugins/elixir ]]; then
  echo "Installing asdf-elixir..."
  asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.git

  echo "Installing elixir 1.19.5-otp-28..."
  asdf install elixir 1.19.5-otp-28
  asdf set -u elixir 1.19.5-otp-28
else
  echo "asdf-elixir is installed."
fi
