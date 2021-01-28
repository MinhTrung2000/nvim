" nnoremap <silent> <space>/ :Commentary<CR>
" vnoremap <silent> <space>/ :Commentary<CR>
" autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}
let g:NERDCreateDefaultMappings = 0
" Add space after comment tag
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
vmap ++ <Plug>NERDCommenterToggle<CR>
nmap ++ <Plug>NERDCommenterToggle<CR>
vmap <leader>cm <Plug>NERDCommenterMinimal<CR>
nmap <leader>cm <Plug>NERDCommenterMinimal<CR>
vmap <leader>cs <Plug>NERDCommenterSexy<CR>
nmap <leader>cs <Plug>NERDCommenterSexy<CR>
