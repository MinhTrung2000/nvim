let g:tagbar_ctags_bin = '$HOME/.local/bin/ctags'
" Tag bar
nnoremap <silent> <F8> :TagbarToggle<CR>
let g:tagbar_visibility_symbols = {
\ 'public'    : '+',
\ 'protected' : '#',
\ 'private'   : '-'
\ }
