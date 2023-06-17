#!/bin/sh

if ! command -v nvim &> /dev/null; then
  echo "Installing neovim"
  brew install neovim
else
  echo "Neovim is installed."
fi

if [[ ! -d ~/.config ]]; then
  mkdir ~/.config
fi

ln -sf ~/projects/dotfiles/config/nvim ~/.config/

echo "Neovim config is symlinked."

if [[ ! -f ~/.config/nvim/autoload/plug.vim ]]; then
  echo "Installing vim-plug..."
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  echo "Installing neovim plugins with vim-plug..."
  nvim +PlugInstall +qall
else
  echo "vim-plug is installed."
fi
