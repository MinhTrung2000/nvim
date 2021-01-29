nmap th <Plug>vem_move_buffer_left-
nmap tl <Plug>vem_move_buffer_right-
nmap tj <Plug>vem_prev_buffer-
nmap tk <Plug>vem_next_buffer-

let g:vem_tabline_show_number = 'index'
nmap <leader>1 :VemTablineGo 1<CR>
nmap <leader>2 :VemTablineGo 2<CR>
nmap <leader>3 :VemTablineGo 3<CR>
nmap <leader>4 :VemTablineGo 4<CR>
nmap <leader>5 :VemTablineGo 5<CR>
nmap <leader>6 :VemTablineGo 6<CR>
nmap <leader>7 :VemTablineGo 7<CR>
nmap <leader>8 :VemTablineGo 8<CR>
nmap <leader>9 :VemTablineGo 9<CR>
nmap <leader>0 :VemTablineGo 10<CR>

command! -nargs=1 Go call VemTablineGo("<args>")
