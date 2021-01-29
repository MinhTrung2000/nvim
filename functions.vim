" Delete current buffer on disk
function! DeleteCurrentFileAndBuffer()
  call delete(expand('%'))
  bdelete!
endfunction

"Auto remove trailing spaces, empty line at EOF
"and keep file viewing.
" Note: Don't set auto BufWritePre because some file
" format (i.e. Markdown) need trailing whitespaces.
function! TrimWhiteSpace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  keeppatterns %s/\($\n\s*\)\+\%$//e
  call winrestview(l:save)
endfunction

nnoremap <silent> <leader>t :call TrimWhiteSpace()<CR>
" autocmd BufWritePre * %s/\s\+$//e

" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END
