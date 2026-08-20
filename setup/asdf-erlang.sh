#!/bin/sh

if [[ ! -d ~/.asdf/plugins/erlang ]]; then
  echo "Installing asdf-erlang..."
  brew install autoconf openssl wxwidgets@3.2 libxslt
  asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git

  echo "Installing erlang 28.5..."
  # note: all of this still doesn't get wx working :sob:
  # probably need to compile wx from source with appropriate options
  KERL_CONFIGURE_OPTIONS="--enable-wx --with-wx-config=/opt/homebrew/bin/wx-config-3.2 --disable-jit --with-ssl=/opt/homebrew/opt/openssl@3" asdf install erlang 28.5
  asdf set -u erlang 28.5
else
  echo "asdf-erlang is installed."
fi
