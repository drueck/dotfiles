#!/bin/sh

FILES_DIR=~/projects/dotfiles/files

echo "Symlinking dotfiles..."

ln -sf $FILES_DIR/zshrc ~/.zshrc
ln -sf $FILES_DIR/tmux.conf ~/.tmux.conf

if [[ ! -d ~/.bin ]]; then
  echo "Linking .bin directory..."
  ln -sf $FILES_DIR/bin ~/.bin
fi

if [[ ! -f ~/.gitconfig ]]; then
  echo "Copying .gitconfig..."
  cp $FILES_DIR/gitconfig ~/.gitconfig
fi

if [[ ! -f ~/.zshrc.local ]]; then
  echo "Copying .zshrc.local..."
  cp $FILES_DIR/zshrc.local ~/.zshrc.local
fi

if [[ ! -f ~/.aliases ]]; then
  echo "Copying .aliases..."
  cp $FILES_DIR/aliases ~/.aliases
fi
