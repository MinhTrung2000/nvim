" nnoremap <silent> <space>/ :Commentary<CR>
" vnoremap <silent> <space>/ :Commentary<CR>
" autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}
vmap ++ <Plug>NERDCommenterToggle<CR>
nmap ++ <Plug>NERDCommenterToggle<CR>
" Add space after comment tag
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
