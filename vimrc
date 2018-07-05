set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'msanders/snipmate.vim'
" Plugin 'scrooloose/syntastic'
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
Plugin 'krisajenkins/vim-projectlocal'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-repeat'
Plugin 'tommcdo/vim-exchange'
Plugin 'slashmili/alchemist.vim'
Plugin 'fatih/vim-go'
Plugin 'janko-m/vim-test'
Plugin 'tpope/vim-fugitive'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'w0rp/ale'

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
" override search highlight color settings
hi IncSearch ctermfg=NONE ctermbg=black cterm=italic
hi Search ctermfg=NONE ctermbg=black

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
" let g:syntastic_ruby_exec = system('rbenv global')

" specify config file for coffeelint
let coffee_lint_options = '-f ~/.coffeelint.json'

" enable per-directory .vimrc files and disable unsafe commands in those
set exrc
set secure

" Rspec.vim mappings
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>
"
" vim-test mappings
nmap <silent> <leader>s :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

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
set nohlsearch

" shortcuts for moving rest of long line to the next line
nmap <Leader>b xi<CR><Esc>
nmap <Leader>n lxi<CR><Esc>

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" vim-markdown-preview
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'

" ale config
let g:ale_linters = {
\  'graphql': [],
\  'javascript': ['eslint', 'flow'],
\  'typescript': ['tsserver', 'typescript-eslint-parser']
\}

let g:ale_fixers = {
\  'javascript': ['prettier'],
\  'graphql': ['prettier'],
\  'typescript': ['prettier'],
\  'elixir': ['mix_format']
\}

let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_typescript_prettier_use_local_config = 1
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_sign_error = "⨉"
let g:ale_sign_warning = "⚠"
let g:ale_lint_on_text_changed = 'never'
