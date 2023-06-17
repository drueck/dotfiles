#!/bin/sh

if ! command -v brew &> /dev/null; then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/drueck/.zshrc.local
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo "Homebrew is installed."
fi

