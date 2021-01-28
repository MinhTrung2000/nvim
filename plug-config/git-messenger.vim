let g:git_messenger_no_default_mappings=0

let g:git_messenger_close_on_cursor_moved = 1

" Note: Typing d and D mappings in popup window reveal diff hunks
let g:git_messenger_include_diff = 'none'

nnoremap <leader>m :GitMessenger<CR>
