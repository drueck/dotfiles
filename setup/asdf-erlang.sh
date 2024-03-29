#!/bin/sh

if [[ ! -d ~/.asdf/plugins/erlang ]]; then
  echo "Installing asdf-erlang..."
  brew install autoconf openssl@1.1 wxwidgets libxslt fop
  asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git

  echo "Installing erlang 26.0.1..."
  asdf install erlang 26.0.1
  asdf global erlang 26.0.1
else
  echo "asdf-erlang is installed."
fi
