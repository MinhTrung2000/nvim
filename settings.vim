set nocompatible
set encoding=utf-8
set mouse=a
set number
set relativenumber
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
" set textwidth=79
set expandtab
set noswapfile
set nowrap
set nojoinspaces
set termguicolors
set autoindent
set smartindent
set shiftround
set noignorecase
set clipboard=unnamedplus
set hidden
set whichwrap+=h,l
set pumheight=10
set cmdheight=2
set splitbelow
set splitright
set laststatus=2
set nobackup
set nowritebackup
set shortmess+=c
set signcolumn=yes
set updatetime=300
set timeoutlen=500
set incsearch

" au BufNewFile,BufRead *.py:
" \ set tabstop=4
" \ set softtabstop=4
" \ set shiftwidth=4
" \ set textwidth=79

"Todo file
autocmd BufNewFile,BufRead *.todo set syntax=todo

" Quantum theme
" let g:quantum_black=1
" let g:airline_theme='quantum'
" let g:quantum_italics=1
" set background=dark
" colorscheme quantum

" Gruvbox theme
let g:gruvbox_constrast_dark = "soft"
let	g:gruvbox_sign_column = "bg0"
set background=dark
colorscheme gruvbox

"Enable folding
set foldmethod=indent
set foldlevel=99
filetype plugin indent on

" Turn off whitespaces compare and folding in vimdiff
silent! set splitvertical
set diffopt+=iwhite
set diffopt+=vertical
" nnoremap <Leader>1 :diffget 1<CR>:diffupdate<CR>
" nnoremap <Leader>2 :diffget 2<CR>:diffupdate<CR>

if has("persistent_undo")
  set undofile
  set undodir=$HOME/.config/nvim/undo
  set undolevels=1000
endif

" augroup NO_CURSOR_MOVE_ON_FOCUS
"   au!
"   au FocusLost * let g:oldmouse=&mouse | set mouse=
"   au FocusGained * if exists('g:oldmouse') | let &mouse=g:oldmouse | unlet g:oldmouse | endif
" augroup END
