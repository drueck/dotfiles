#!/bin/sh

if ! command -v rustup &> /dev/null; then
  echo "Installing rust..."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

  echo "Adding ~/.cargo/bin to the PATH..."
  echo "export PATH=\$PATH:$HOME/.cargo/bin" >> ~/.zshrc.local

  echo "Please restart your shell to start using rust."
else
  echo "Rust is installed."
fi
