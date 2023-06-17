#!/bin/sh

if [[ -d ~/.asdf/plugins/elixir ]]; then
  # echo "Installing asdf-elixir..."
  # asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

  echo "Installing elixir 1.14.5-otp-26..."
  asdf install elixir 1.14.5-otp-26
  asdf global elixir 1.14.5-otp-26
else
  echo "asdf-elixir is installed."
fi
