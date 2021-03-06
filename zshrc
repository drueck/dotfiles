# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="drueck"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias phpl='find . -name "*.php" -exec php -l {} \; | grep -v "No syntax errors"'
alias trash='trash-put'
alias chrome=google-chrome
# do not wrap lines when listing routes
alias rr='rake routes | less -S'
alias ggr='git graph'
alias gf='git fetch'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Disable flow control commands (keeps CTRL+S from freezing everything)
stty start undef
stty stop undef

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git command-not-found bundler rbenv tmuxinator rails)

source $ZSH/oh-my-zsh.sh

export EDITOR=nvim

# load other machine specific aliases
source $HOME/.aliases

# add the ~/.bin directory to the path for scripts
PATH=$PATH:~/.bin

# set machine specific PATH, etc, here
source $HOME/.zshrc.local

# gcog: git checkout grep
# usage: gcog <unique-part-of-branch-name>
# runs: git checkout <branch-name>
gcog() {
  git branch | grep -m 1 $1 | xargs git checkout
}
