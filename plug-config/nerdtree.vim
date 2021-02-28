nnoremap tt :NERDTreeToggle<CR>

" call :NERDTreeCWD -- Change the NERDTree root to the current working directory.

" Mapping note
" Open file: o; go
" Open in tab: t, T
" Open in split window: i, gi
" Open in vertical split window: s, gs
" Recursively open: O
" Jump to root: P
" Jump to parent: p
" Change root node to selected: C
" Move root up one level: u, U
" Refresh: r, R
" Display menu: m
" Chage CWD to selected node: cd
" Change tree root to CWD: CD
" Close: q

let g:NERDTreeGitStatusWithFlags = 1

" NERDTree config
let g:NERDTreeIgnore = ['^node_modules$','\.pyc$', '\.pyo$', '^__pycache__$', '^undo$', '\.o$', '\~$']
let g:NERDTreeMinimalUI = 1
let g:NERDTreeCascadeSingleChildDir=0
let g:NERDTreeCascadeOpenSingleChildDir=0
let g:NERDTreeAutoCenter = 0

" Sync open file with NERDTree
" Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

"Call NERDTree iff NERDTree is active, current window contains a modifiable
"file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
      NERDTreeFind
      " Move cursor back to preview window (active buffer) after :NERDTreeFind
      wincmd p
  endif
endfunction

let g:webdevicons_enable_nerdtree = 1

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
