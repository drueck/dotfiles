# David Rueck's dotfiles

## What's Included

- boostrap script borrowed from
  [jerelmiller/dotfiles](https://github.com/jerelmiller/dotfiles) that creates
  an ssh key, installs the xcode cli tools (including git), and clones this repo
- setup script that installs everything else
- basic zshrc, oh-my-zsh, and drueck theme
- tmux config file inspired by [ls-pair](https://github.com/livingsocial/ls-pair)
- neovim config
- tat script for tmux (also from jerel's dotfiles)

## Bootstrap

If you have a new machine and you need the basics setup like getting your ssh key created
and uploaded to github and the xcode cli tools (including git) installed, start with the
bootstrap script which will interactively walk you through that process. At the end you will
have this repo installed at `~/projects/dotfiles`.

```terminal
bash -c "$(curl -LsS https://raw.githubusercontent.com/drueck/dotfiles/main/bootstrap.sh)"
```

## Setup

Once you have gotten the dotfiles repo cloned, you can complete the setup.

Note that the versions of the various programming languages that will be
installed via asdf as part of this setup were the latest as of mid 2023, but
you might want to update them before installing or just install newer/different
versions in addition to the ones installed by default.

```terminal
cd ~/projects/dotfiles/setup
./setup.sh
```

After installing, close your terminal and open iTerm and you should be all set!
