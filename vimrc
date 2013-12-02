" Install plugins in .vim/bundle
execute pathogen#infect()

" default to 2 spaces for indentation
" unless overriden in .vim/after/ftplugin/<type>.vim
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set number

syntax on
filetype plugin indent on

let mapleader = " "

colorscheme slate

au BufRead,BufNewFile *.json setf javascript
au BufRead,BufNewFile *.rabl setf ruby
au BufRead,BufNewFile *.ruby setf ruby

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
let g:syntastic_ruby_exec = '~/.rbenv/versions/2.0.0-p247/bin/ruby'

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
