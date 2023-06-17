#!/bin/sh

if [[ ! -d ~/.oh-my-zsh ]]; then
  echo "Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "oh-my-zsh is installed."
fi

if [[ ! -f ~/.oh-my-zsh/custom/themes/drueck.zsh-theme ]]; then
  echo "Installing drueck.zsh-theme..."
  ln -sf ~/projects/dotfiles/files/drueck.zsh-theme ~/.oh-my-zsh/custom/themes/drueck.zsh-theme
else
  echo "drueck.zsh-theme is installed."
fi
