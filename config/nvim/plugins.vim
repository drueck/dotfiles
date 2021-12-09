call plug#begin('~/.config/nvim/plugged')

" Language pack that includes most languages
Plug 'sheerun/vim-polyglot'

" Elixir
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }

" Ruby/Rails
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'thoughtbot/vim-rspec'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'ecomba/vim-ruby-refactoring'

" GraphQL
Plug 'jparise/vim-graphql'

" Markdown
Plug 'JamshedVesuna/vim-markdown-preview'

" Testing
Plug 'janko-m/vim-test'

" Text
Plug 'tpope/vim-commentary'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'skwp/greplace.vim'
Plug 'yssl/QFEnter'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tommcdo/vim-exchange'

" Tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'

" File helpers
Plug 'tpope/vim-eunuch'

" Git
Plug 'tpope/vim-fugitive'

" Linting/autoformatting
" Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" General vim
Plug 'scrooloose/nerdtree'
Plug 'krisajenkins/vim-projectlocal'
Plug 'christoomey/vim-system-copy'
Plug 'haya14busa/is.vim'
Plug 'mihaifm/bufstop'

call plug#end()
