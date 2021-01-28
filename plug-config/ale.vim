let g:ale_fixers = {
	\'javascript': ['prettier', 'eslint'],
	\'json': ['prettier', 'jsonlint'],
	\'typescript': ['prettier', 'tslint'],
	\'css': ['prettier'],
	\'html': ['prettier'],
	\'graphql': ['prettier', 'eslint'],
	\'python': ['autopep8', 'black', 'isort', 'autoimport', 'yapf']
	\}
"let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1
let g:ale_disable_lsp = 1
" Keep  sign gitgutter
let g:ale_sign_column_always = 1
" Navigate between errors.
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
