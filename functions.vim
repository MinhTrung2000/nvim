" Delete current buffer on disk
function! DeleteCurrentFileAndBuffer()
  call delete(expand('%'))
  bdelete!
endfunction

"Auto remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e

" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

"nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
"\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
"\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>

