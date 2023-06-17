" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Use CTRL + HJKL navigation keys to navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" switch between the last two files
nnoremap <leader><leader> <c-^>

" bind K to grep word under cursor
noremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Global search commands
" Usage :[A|Ag] [--<language>] search term<ENTER>
" Eg: :A --python PIL
" Eg: :Ag --python PIL
" A will show the results in an fzf popup which can then be fuzzy filtered
command! -nargs=+ -complete=file A call fzf#vim#ag_raw(<q-args>)
" Ag will show the results in a quickfix window
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
" bind \ (backward slash) to grep shortcut
nnoremap \ :Ag<SPACE>

" move the rest of the line after the cursor to the next line
nmap <Leader>n lxi<CR><Esc>

" visually select last modified (pasted, typically) text
nnoremap gp `[v`]

" save with CTRL+W
nnoremap <C-w> :w<CR>

" Note: other mappings may be present in plugin-specific configs
