" Insert result of command to buffer
function! GetCMDResult(cmd)
  redir => message
  silent execute a:cmd
  redir END
  if empty(message)
    echoerr(message)
  else
    new
    setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
    silent put=message
  endif
endfunction
command! -nargs=+ -complete=command GetCMDResult call GetCMDResult(<q-args>)

" Get date time
nmap <M-d> "=strftime('%c')<C-M>p

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
  " Format unix line ending.
  keeppatterns %s/\r//ge
  " Remove inline trailing whitespaces.
  keeppatterns %s/\s\+$//e
  " Remove trailing whitespaces at EOF.
  keeppatterns %s/\($\n\s*\)\+\%$//e
  call winrestview(l:save)
endfunction

nnoremap <silent> <leader>t :call TrimWhiteSpace()<CR>
" autocmd BufWritePre * %s/\s\+$//e

" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

" Vim QuickRun
function! Quickrun(isfull)
  silent! wall
  let file_name = expand('%:t:r')
  let extension = expand('%:e')
  let runner = ""
  if extension == "js"
    let runner = "node"
  endif
  if extension == "ts"
    let runner = "ts-node"
  endif
  if extension == "rb"
    let runner = "ruby"
  endif
  if extension == "go"
    let runner = "go run"
  endif
  if extension == "py"
    let runner = "python"
  endif
  if extension == "swift"
    let runner = "swift"
  endif
  if extension == "c"
    let runner = "compile"
    let compiler = "gcc -g"
  endif
  if extension == "cc"
    let runner = "compile"
    let compiler = "g++ -std=c++14 -g"
  endif
  if extension == "cpp"
    let runner = "compile"
    let compiler = "g++ -std=c++14 -g"
  endif
  if extension == "hs"
    let runner = "compile"
    let compiler = "ghc"
  endif
  if extension == "rs"
    let runner = "compile"
    let compiler = "rustc"
  endif
  if runner == ""
    echoerr "File type not supported!"
  else
    if a:isfull == "true"
      if runner == "compile"
        execute "!term (".compiler." ".file_name.".".extension." -o ".file_name." && ./".file_name.")"
      else
        execute ":term ".runner." ".file_name.".".extension
      endif
    endif
    if a:isfull == "false"
      if runner == "compile"
        " execute "!(".compiler." ".file_name.".".extension." -o ".file_name." && ./".file_name.")"
        execute ":AsyncRun -save=2 ".compiler." ".file_name.".".extension." -o ".file_name." && ./".file_name.")"
      else
        " execute ":!".runner." ".file_name.".".extension
        execute ":AsyncRun -save=2 ".runner." ".file_name.".".extension
      endif
    endif
  endif
endfunction

command! QuickRun call Quickrun("false")
nnoremap <F7> :QuickRun<CR>

" Quick run full screen mode
command! QuickRunFull call Quickrun("true")

" Run unittest
function! RunUnittest()
  silent! wall
  let file_name = expand('%:t:r')
  let extension = expand('%:e')
  let runner = ""
  let command = ""
  if extension == "py"
    " let runner = "ipython"
    let runner = "python"
    let command = "-m unittest"
  endif
  if runner == ""
    echoerr "File type not supported!"
  else
    execute ":AsyncRun! -save=2 -focus=1 -raw ".runner." ".command." $(VIM_FILEPATH)"
  endif
endfunction

command! RunUnittest call RunUnittest()
" nnoremap <silent> <M-u> :RunUnittest<CR>

" function QfMakeConv()
"   let qflist = getqflist()
"   for i in qflist
"     let i.text = iconv(i.text, "cp936", "utf-8")
"   endfor
"   call setqflist(qflist)
" endfunction

" au QuickfixCmdPost make call QfMakeConv()
