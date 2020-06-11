let g:ale_linters = {
\  'graphql': [],
\  'javascript': ['eslint'],
\  'typescript': ['tsserver', 'typescript-eslint-parser'],
\  'elixir': ['elixir-ls'],
\  'rust': ['cargo'],
\  'ruby': ['rubocop'],
\  'python': ['flake8', 'pylint']
\}

let g:ale_fixers = {
\  'javascript': ['prettier'],
\  'mdx': ['prettier'],
\  'graphql': ['prettier'],
\  'typescript': ['prettier'],
\  'json': ['prettier'],
\  'elixir': ['mix_format'],
\  'rust': ['rustfmt'],
\}

let g:ale_elixir_elixir_ls_release = '~/projects/elixir-ls/rel'
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_typescript_prettier_use_local_config = 1
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_sign_error = "⨉"
let g:ale_sign_warning = "⚠"
let g:ale_lint_on_text_changed = 'never'

" trying these out
highlight ALEError ctermbg=Black cterm=underline
highlight ALEWarning ctermbg=Black cterm=underline
