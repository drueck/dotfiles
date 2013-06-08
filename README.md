# David Rueck's dotfiles

Based on [Ryan Bates Dot Files](https://github.com/ryanb/dotfiles)

## What's Included

- oh-my-zsh with drueck theme and basic zshrc
- vimrc with some settings I like
- vim directory including some plugins I use
- nice tmux config file from [ls-pair](https://github.com/livingsocial/ls-pair)
- gitconfig setup including Ryan Bates' prompts for name and email
- coffeelint config file supporting tab indentation (narrowly my preference for now)

Note that I have some things hardcoded in config files that won't be applicable
on every machine, particularly in vimrc and zshrc. I should move those elsewhere
so this is more applicable for others to use, but for now it's mostly just so I
don't have to use Dropbox for my dotfiles anymore.

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
unlink ~/.vim
unlink ~/.vimrc
unlink ~/.tmux.conf
unlink ~/.coffeelint.json
rm ~/.zshrc # careful here
rm ~/.gitconfig
rm -rf ~/.dotfiles
rm -rf ~/.oh-my-zsh
chsh -s /bin/bash # change back to Bash if you want
```

Then open a new terminal window to see the effects.
