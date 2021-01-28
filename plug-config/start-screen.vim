let g:startify_custom_header = []
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
\ { 'type': 'files',     'header': ['   MRU']                        },
\ { 'type': 'dir',       'header': ['   Current Directory: '. getcwd()] },
\ { 'type': 'sessions',  'header': ['   Sessions']                     },
\ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
\ ]

" Auto load session if having
let g:startify_session_autoload = 1
" Don't delete old buffer when load session
let g:startify_session_delete_buffers = 0
" Change to the root directory of the VCS
let g:startify_change_to_vcs_root = 1
" Change to directory of selected file or bookmarks
let g:startify_change_to_dir = 1
let g:startify_fortune_use_unicode = 1
" Automatically update sessions before exitting or :SLoad call
let g:startify_session_persistence = 1
let g:webdevicons_enable_startify = 1
let g:startify_enable_special = 0
" Sort session by modification time
let g:startify_session_sort = 0
" Show relative path of MRU
let g:startify_relative_path = 0

let g:startify_session_before_save = [
\ 'echo "Save session!."',
\ 'silent! NERDTreeTabsClose'
\ ]

function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_bookmarks = [
\ { 'i': '~/.config/nvim/init.vim' }
\ ]

