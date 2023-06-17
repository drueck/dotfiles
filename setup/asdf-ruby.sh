#!/bin/sh

if [[ ! -d ~/.asdf/plugins/ruby ]]; then
  echo "Installing asdf-ruby..."
  brew install openssl@3 readline libyaml gmp
  asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
else
  echo "asdf-ruby is installed."
fi
