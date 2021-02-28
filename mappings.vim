nnoremap <F1> :e ~/.config/nvim/init.vim<CR>
nnoremap <F2> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-w> :clo<CR>
nmap q <Nop>

let mapleader=" "

" let localleader=" "
" nnoremap <Space> <Nop>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Search for visually selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Better nav for omnicomplete
" inoremap <expr> <c-j> ("\<C-n>")
" inoremap <expr> <c-k> ("\<C-p>")

" I hate escape more than anything else
inoremap jk <Esc>

" Clear search highlighting
nnoremap <ESC><ESC> :nohlsearch<CR>

" In Visual Mode, press 'p' to delete selected text (to blackhold reg: "_) and print
vnoremap p "_dP

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Alternate way to save
noremap <silent> <C-s> :w<CR>
" Alternate way to quit
nnoremap <silent> <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>
" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

nnoremap <Leader>wh :wincmd h<CR>
nnoremap <Leader>wl :wincmd l<CR>
nnoremap <Leader>wk :wincmd k<CR>
nnoremap <Leader>wj :wincmd j<CR>
nnoremap <Leader>w= :wincmd =<CR>
nnoremap <Leader>wr :wincmd r<CR>

" Delete buffer on disk
nnoremap <Leader>Q :call DeleteCurrentFileAndBuffer()<CR>
" Delete buffer by calling :Bdelete
nnoremap <Leader>q :Bdelete<CR>

" Create and restore session
nnoremap <Leader>ss :mksession! .vimsession<CR>
nnoremap <Leader>sr :so .vimsession<CR>

nnoremap <silent> <C-Up>    :resize -2<CR>
nnoremap <silent> <C-Down>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>


