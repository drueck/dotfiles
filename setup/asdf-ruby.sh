#!/bin/sh

if [[ ! -d ~/.asdf/plugins/ruby ]]; then
  echo "Installing asdf-ruby..."
  brew install openssl@3 readline libyaml gmp
  asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git

  echo "Installing ruby 3.2.2..."
  asdf install ruby 3.2.2
  asdf global ruby 3.2.2
else
  echo "asdf-ruby is installed."
fi
