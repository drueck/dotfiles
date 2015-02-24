set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'msanders/snipmate.vim'
Plugin 'scrooloose/syntastic'
Plugin 'kchmck/vim-coffee-script'
Plugin 'AndrewRadev/vim-eco'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-haml'
Plugin 'elixir-lang/vim-elixir'
Plugin 'digitaltoad/vim-jade'
Plugin 'thoughtbot/vim-rspec'
Plugin 'mustache/vim-mode'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'skwp/greplace.vim'
Plugin 'yssl/QFEnter'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'christoomey/vim-tmux-runner'

call vundle#end()
filetype plugin indent on

" required for vim-textobj-rubyblock
runtime macros/matchit.vim

" default to 2 spaces for indentation
" unless overriden in .vim/after/ftplugin/<type>.vim
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" hybrid numbering... show current line number on current line
" and relative line numbers on all other lines
set relativenumber
set number

syntax on

let mapleader = " "

colorscheme slate

au BufRead,BufNewFile *.json setf javascript
au BufRead,BufNewFile *.rabl setf ruby
au BufRead,BufNewFile *.ruby setf ruby

autocmd FileType php setlocal commentstring=//\ %s
autocmd FileType clojure RainbowParenthesesToggle

" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <F2> :NERDTreeToggle<CR>

" disable arrow keys so i will use hjkl for nav
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" switch between the last two files
nnoremap <leader><leader> <c-^>

" open new split panes to the right and bottom
set splitbelow
set splitright

" Use CTRL + HJKL navigation keys to navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" specify the path to the ruby version for syntastic to use
let g:syntastic_ruby_exec = system('rbenv global')

" specify config file for coffeelint
let coffee_lint_options = '-f ~/.coffeelint.json'

" enable per-directory .vimrc files and disable unsafe commands in those
set exrc
set secure

" Rspec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" vim-better-whitespace
map <Leader>w :StripWhitespace<CR>

" without VimTmuxRunner
let g:rspec_command = "!spring rspec {spec}"
" with VimTmuxRunner
" let g:rspec_command = "VtrSendCommandToRunner! spring rspec {spec}"

" CTRL+S to save
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
noremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

set incsearch

" shortcuts for moving rest of long line to the next line
nmap <Leader>b xi<CR><Esc>
nmap <Leader>n lxi<CR><Esc>
