let g:bookmark_no_default_key_mappings = 0
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_auto_save_file = '.vim-bookmarks'
let g:bookmark_highlight_lines = 1
let g:bookmark_save_per_working_dir = 0
let g:bookmark_auto_save = 0
let g:bookmark_location_list = 1
nmap <Leader>bt <Plug>BookmarkToggle
nmap <Leader>bi <Plug>BookmarkAnnotate
nmap <Leader>ba <Plug>BookmarkShowAll
nmap <Leader>bj <Plug>BookmarkNext
nmap <Leader>bk <Plug>BookmarkPrev
nmap <Leader>bc <Plug>BookmarkClear
nmap <Leader>bx <Plug>BookmarkClearAll
nmap <Leader>bh <Plug>BookmarkMoveUp
nmap <Leader>bl <Plug>BookmarkMoveDown
nmap <Leader>bg <Plug>BookmarkMoveToLine
