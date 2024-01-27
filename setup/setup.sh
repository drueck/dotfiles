#!/bin/sh

set -e

./dotfiles.sh
./oh-my-zsh.sh
./homebrew.sh
./iterm2.sh
./font.sh
./tmux.sh
./neovim.sh
./asdf.sh
./asdf-ruby.sh
./asdf-nodejs.sh
./node-globals.sh
./asdf-python.sh
./asdf-erlang.sh
./asdf-elixir.sh
./rust.sh
./yarn.sh
./ag.sh
./fd.sh
./rg.sh
./stylua.sh

echo "Everything should be installed! Restart your shell to reload the environment."
