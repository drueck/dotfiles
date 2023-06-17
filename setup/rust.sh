#!/bin/sh

if ! command -v rustup &> /dev/null; then
  echo "Installing rust..."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

  echo "Please restart your shell to start using rust."
else
  echo "Rust is installed."
fi
