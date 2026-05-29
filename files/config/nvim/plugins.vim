call plug#begin('~/.config/nvim/plugged')

" Syntax highlighting for various languages
Plug 'nvim-treesitter/nvim-treesitter', {'branch': 'master', 'do': ':TSUpdate'}

" General vim
Plug 'scrooloose/nerdtree'
Plug 'krisajenkins/vim-projectlocal'
Plug 'christoomey/vim-system-copy'
Plug 'haya14busa/is.vim'
Plug 'mihaifm/bufstop'
Plug 'shaunsingh/nord.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'notjedi/nvim-rooter.lua'

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

" LSPs and Autocompletion
Plug 'williamboman/mason.nvim', { 'do': ':MasonUpdate' }
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" Rust
Plug 'nvim-lua/plenary.nvim'
Plug 'mfussenegger/nvim-dap'

" Formatting
Plug 'mhartington/formatter.nvim'

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Claude Code
Plug 'coder/claudecode.nvim'


call plug#end()
