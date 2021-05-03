nnoremap tt :NERDTreeToggle<CR>

let g:NERDTreeGitStatusWithFlags = 1

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" NERDTree config
let g:NERDTreeIgnore = ['\.git$', '^node_modules$','\.pyc$', '\.pyo$', '^__pycache__$', '^undo$', '\.o$', '\~$']
let g:NERDTreeMinimalUI = 1
let g:NERDTreeCascadeSingleChildDir = 0
let g:NERDTreeCascadeOpenSingleChildDir = 0
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeChDirMode = 3
let g:NERDTreeNaturalSort = 1
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:nerdtree_sync_cursorline = 1
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowHidden = 1 
" let g:NERDTreeShowBookmarks = 1

" Sort bookmark case sensitive.
let g:NERDTreeBookmarksSort = 2

" Sync open file with NERDTree
" Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

"Call NERDTree iff NERDTree is active, current window contains a modifiable
"file, and we're not in vimdiff
" function! SyncTree()
"   if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
"       NERDTreeFind
"       " Move cursor back to preview window (active buffer) after :NERDTreeFind
"       wincmd p
"   endif
" endfunction

let g:webdevicons_enable_nerdtree = 1

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
" autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"     \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
