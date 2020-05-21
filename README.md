# David Rueck's dotfiles

Based on [Ryan Bates Dot Files](https://github.com/ryanb/dotfiles)

## What's Included

- oh-my-zsh with drueck theme and basic zshrc
- neovim config
- nice tmux config file from [ls-pair](https://github.com/livingsocial/ls-pair)
- gitconfig setup including Ryan Bates' prompts for name and email
- bin/tat script for tmux

## Prerequisites

### Ruby

The install script uses ruby, so you'll need to have ruby installed and the
`rake` command on your path, which it should be if ruby is installed.  It
should be installed on many modern operating systems already, but if it's
missing and you want a recommendation, I typically use
[asdf](https://github.com/asdf-vm/asdf) to install and manage ruby and other
languages.

### Neovim

You will also need to install neovim before running running the install script
below, and the installation method is different depending on the OS. See
the following for OS-specific instructions:

[Installing Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

## Installation

Run the following commands in your terminal. It will prompt you before it does
anything destructive. Check out the Rakefile to see exactly what it does.

```terminal
git clone git://github.com/drueck/dotfiles ~/.dotfiles
cd ~/.dotfiles
rake install
```

After installing, open a new terminal window to see the effects.

Feel free to customize the .zshrc file to match your preference.

## Uninstall

To remove the dotfile configs, run the following commands. Be certain to double check
the contents of the files before removing so you don't lose custom settings.

```
unlink ~/.config/nvim
unlink ~/.tmux.conf
unlink ~/.bin
rm ~/.zshrc # careful here
rm ~/.gitconfig
rm -rf ~/.dotfiles
rm -rf ~/.oh-my-zsh
chsh -s /bin/bash # change back to Bash if you want
```

Then open a new terminal window to see the effects.
