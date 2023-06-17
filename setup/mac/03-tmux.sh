#!/bin/sh

if ! command -v tmux &> /dev/null; then
  echo "Installing tmux..."
  brew install tmux
else
  echo "Tmux is installed."
fi

