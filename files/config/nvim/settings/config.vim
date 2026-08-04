" set leader to space
let mapleader = " "

" hybrid numbering... show current line number on current line
" and relative line numbers on all other lines
set relativenumber
set number

filetype plugin indent on
syntax enable

set autoindent

" default to 2 spaces for indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" colorscheme stuff copied from jerelmiller/dotfiles
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

if (has("termguicolors"))
  set termguicolors
end

set background=dark
let g:enable_italic_font=1
lua require("rose-pine").setup({ variant = "main" })
colorscheme rose-pine

highlight clear SignColumn

set incsearch
set hlsearch

" override search highlight color settings
hi IncSearch ctermfg=NONE ctermbg=blue cterm=italic
hi Search ctermfg=NONE ctermbg=blue

" don't beep at me
set visualbell

" open new split panes to the right and bottom
set splitbelow
set splitright

" enable per-directory .vimrc files and disable unsafe commands in those
set exrc
set secure

" Use ag over grep
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
endif

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" treat terragrunt.hcl as terraform filetype
au! BufNewFile,BufRead terragrunt.hcl set filetype=terraform syntax=terraform

" allow local config files
set exrc
