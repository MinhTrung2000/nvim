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
    let compiler = "g++ -std=c++1z -g"
  endif
  if extension == "cpp"
    let runner = "compile"
    let compiler = "g++ -std=c++1z -g"
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
        execute "!(".compiler." ".file_name.".".extension." -o ".file_name." && ./".file_name.")"
        " execute ":AsyncRun ".compiler." ".file_name.".".extension." -o ".file_name." && ./".file_name.")"
      else
        execute ":!".runner." ".file_name.".".extension
        " execute ":AsyncRun ".runner." ".file_name.".".extension
      endif
    endif
  endif
endfunction

command! QuickRunExecute call Quickrun("false")
command! QuickRunExecuteFullScreen call Quickrun("true")
nnoremap <F7> :QuickRunExecute<CR>

" Floating Term
let s:float_term_border_win = 0
let s:float_term_win = 0
function! FloatTerm(...)
  " Configuration
  let height = float2nr((&lines - 2) * 0.6)
  let row = float2nr((&lines - height) / 2)
  let width = float2nr(&columns * 0.6)
  let col = float2nr((&columns - width) / 2)
  " Border Window
  let border_opts = {
        \ 'relative': 'editor',
        \ 'row': row - 1,
        \ 'col': col - 2,
        \ 'width': width + 4,
        \ 'height': height + 2,
        \ 'style': 'minimal'
        \ }
  " Terminal Window
  let opts = {
        \ 'relative': 'editor',
        \ 'row': row,
        \ 'col': col,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }
  let top = "╭" . repeat("─", width + 2) . "╮"
  let mid = "│" . repeat(" ", width + 2) . "│"
  let bot = "╰" . repeat("─", width + 2) . "╯"
  let lines = [top] + repeat([mid], height) + [bot]
  let bbuf = nvim_create_buf(v:false, v:true)
  call nvim_buf_set_lines(bbuf, 0, -1, v:true, lines)
  let s:float_term_border_win = nvim_open_win(bbuf, v:true, border_opts)
  let buf = nvim_create_buf(v:false, v:true)
  let s:float_term_win = nvim_open_win(buf, v:true, opts)
  " Styling
  hi FloatWinBorder guifg=#87bb7c
  call setwinvar(s:float_term_border_win, '&winhl', 'Normal:FloatWinBorder')
  call setwinvar(s:float_term_win, '&winhl', 'Normal:Normal')
  if a:0 == 0
    terminal
  else
    call termopen(a:1)
  endif
  startinsert
  " Close border window when terminal window close
  autocmd TermClose * ++once :bd! | call nvim_win_close(s:float_term_border_win, v:true)
endfunction

" Open terminal
nnoremap <Leader>at :call FloatTerm()<CR>
" Open tig, yes TIG, A FLOATING TIGGGG!!!!!!
nnoremap <Leader>ag :call FloatTerm('"tig"')<CR>

" Open google chrome for current buffer.
function! Google()
  execute ":!google-chrome %"
endfunction
command! Google call Google()

nnoremap <silent> <Leader>U :w<CR> execute(":!python -m unittest %")<CR>

" Run unittest
function! UnittestRun()
  silent! wall
  let file_name = expand('%:t:r')
  let extension = expand('%:e')
  let runner = ""
  let command = ""
  " if extension == "js"
  "   let runner = "node"
  " endif
  " if extension == "ts"
  "   let runner = "ts-node"
  " endif
  " if extension == "rb"
  "   let runner = "ruby"
  " endif
  " if extension == "go"
  "   let runner = "go run"
  " endif
  if extension == "py"
    " let runner = "ipython"
    let runner = "python"
    let command = "-m unittest"
  endif
  " if extension == "swift"
  "   let runner = "swift"
  " endif
  " if extension == "c"
  "   let runner = "compile"
  "   let compiler = "gcc -g"
  " endif
  " if extension == "cc"
  "   let runner = "compile"
  "   let compiler = "g++ -std=c++11 -g"
  " endif
  " if extension == "cpp"
  "   let runner = "compile"
  "   let compiler = "g++ -std=c++1z -g"
  " endif
  " if extension == "hs"
  "   let runner = "compile"
  "   let compiler = "ghc"
  " endif
  " if extension == "rs"
  "   let runner = "compile"
  "   let compiler = "rustc"
  " endif
  if runner == ""
    echoerr "File type not supported!"
  else
    execute ":AsyncRun! -save=2 -focus=1 -raw ".runner." ".command." $(VIM_FILEPATH)"
  endif
endfunction

command! UnittestRun call UnittestRun()
nnoremap <silent> <M-u> :UnittestRun<CR>

" function QfMakeConv()
"   let qflist = getqflist()
"   for i in qflist
"     let i.text = iconv(i.text, "cp936", "utf-8")
"   endfor
"   call setqflist(qflist)
" endfunction

" au QuickfixCmdPost make call QfMakeConv()
