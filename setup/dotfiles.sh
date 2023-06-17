#!/bin/sh

FILES_DIR=~/projects/dotfiles/files

echo "Symlinking dotfiles..."

ln -sf $FILES_DIR/zshrc ~/.zshrc
ln -sf $FILES_DIR/zshrc.local ~/.zshrc.local
ln -sf $FILES_DIR/aliases ~/.aliases
ln -sf $FILES_DIR/tmux.conf ~/.tmux.conf
ln -sf $FILES_DIR/gitconfig ~/.gitconfig
ln -sf $FILES_DIR/bin ~/.bin
