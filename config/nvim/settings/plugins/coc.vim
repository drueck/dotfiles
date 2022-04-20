let g:coc_global_extensions = [
\ 'coc-elixir',
\ 'coc-eslint',
\ 'coc-json',
\ 'coc-prettier',
\ 'coc-pyright',
\ 'coc-rust-analyzer',
\ 'coc-tsserver',
\]

" Format selected code (doesn't work with black sadly)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')
