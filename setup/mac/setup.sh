#!/bin/sh

set -e

./01-homebrew.sh
./02-iterm2.sh
./03-tmux.sh
./04-neovim.sh
./05-asdf.sh
./06-asdf-ruby.sh
./07-asdf-nodejs.sh
./08-asdf-python.sh
./09-asdf-erlang.sh
./10-asdf-elixir.sh
./11-rust.sh
./12-yarn.sh
./13-ag.sh

echo "Everything should be installed! Restart your shell to reload the environment."
