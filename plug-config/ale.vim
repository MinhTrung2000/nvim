let g:ale_linters = {
\ 'javascript': ['prettier', 'eslint'],
\ 'json': ['jsonlint'],
\ 'typescript': ['prettier'],
\ 'html': ['prettier'],
\ 'css': ['prettier'],
\ 'graphql': ['prettier'],
\ 'python': ['flake8', 'pyright'],
\ 'markdown': ['prettier']
\ }
let g:ale_fixers = {
	\'javascript': ['prettier', 'eslint'],
	\'json': ['prettier', 'jsonlint'],
	\'typescript': ['prettier'],
	\'css': ['prettier'],
	\'html': ['prettier'],
	\'graphql': ['prettier'],
	\'python': ['autopep8', 'autoimport', 'yapf']
	\}
let g:ale_enabled = 1
" let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1
let g:ale_disable_lsp = 1
" Keep  sign gitgutter
let g:ale_sign_column_always = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter% - %code%] [%severity%]: %s'
let g:ale_detail_to_floating_preview = 1
" Navigate between errors.
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
