call plug#begin('~/.nvim/plugged')
" Better Comments
Plug 'preservim/nerdcommenter'

" File browser
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'unkiwii/vim-nerdtree-sync'

" Convert binary, hex, etc..
" Use gA to view, and crd, crx, cro, crb for converting
Plug 'glts/vim-magnum'
Plug 'glts/vim-radical'

" Repeat stuff
Plug 'tpope/vim-repeat'

" Convenient keymapping
Plug 'tpope/vim-unimpaired'

" Easymotion
Plug 'easymotion/vim-easymotion'

" Surround
Plug 'tpope/vim-surround'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

" Searching text
Plug 'haya14busa/incsearch.vim'
" Plug 'eugen0329/vim-esearch'

" Cool Icons
Plug 'ryanoasis/vim-devicons'

" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

" Themes
Plug 'morhetz/gruvbox'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Indent line
Plug 'Yggdroot/indentLine'

" Choose window fast
Plug 't9md/vim-choosewin'

" Fuzzy
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'

" Use Ranger in a floating window
Plug 'kevinhwang91/rnvimr'

" Git
" Shows git diff markers
Plug 'airblade/vim-gitgutter'
" Git command
Plug 'tpope/vim-fugitive'
" A git commit browser
Plug 'junegunn/gv.vim'
" Reveal the commit messages under the cursor
Plug 'rhysd/git-messenger.vim'

" Start Screen
Plug 'mhinz/vim-startify'

" Tag bar
Plug 'preservim/tagbar'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'

" Better tabline
Plug 'pacha/vem-tabline'

" Undo time travel
Plug 'mbbill/undotree'

" Find and replace
Plug 'brooth/far.vim'

" Tags
Plug 'othree/html5.vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'cakebaker/scss-syntax.vim'

" Async tasks
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }

" Colorizer
Plug 'RRethy/vim-hexokinase'

" Debugging
Plug 'puremourning/vimspector'

" Typescript syntax
Plug 'HerringtonDarkholme/yats.vim'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" Generate tags
" Plug 'ludovicchabant/vim-gutentags'

" Delete buffers without closing window
Plug 'moll/vim-bbye'

" Tmux navigation
" Plug 'christoomey/vim-tmux-navigator'

" Live server
Plug 'jaxbot/browserlink.vim'

" Extended % matching for HTML, LaTeX, and many other languages
Plug 'vim-scripts/matchit.zip'

" React JSX syntax highlighting
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'

" Generate python docstring
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }

call plug#end()

let g:python3_host_prog = "$HOME/anaconda3/bin/python3"

" General
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/functions.vim
source $HOME/.config/nvim/mappings.vim

" Python Configuration
source $HOME/.config/nvim/pydocconf.vim
" Plugin Configuration
" coc.nvim
source $HOME/.config/nvim/plug-config/coc/coc.vim
source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
" Ranger
source $HOME/.config/nvim/plug-config/rnvimr.vim
" Fuzzy
source $HOME/.config/nvim/plug-config/fzf.vim
" Easy motion
source $HOME/.config/nvim/plug-config/easymotion.vim
" Starify
source $HOME/.config/nvim/plug-config/start-screen.vim
" Gitgutter
source $HOME/.config/nvim/plug-config/gitgutter.vim
" Git messenger
source $HOME/.config/nvim/plug-config/git-messenger.vim
" Close-tag
source $HOME/.config/nvim/plug-config/closetags.vim
" Far
source $HOME/.config/nvim/plug-config/far.vim
" Tagalong
source $HOME/.config/nvim/plug-config/tagalong.vim
" Asynctask
source $HOME/.config/nvim/plug-config/asynctask.vim
" Markdown-preview
source $HOME/.config/nvim/plug-config/markdown-preview.vim
" Vimspector
source $HOME/.config/nvim/plug-config/vimspector.vim
" Airline
source $HOME/.config/nvim/plug-config/airline.vim
" Colorize
source $HOME/.config/nvim/plug-config/colorize.vim
" Tag bar
source $HOME/.config/nvim/plug-config/tagbar.vim
" Choose-win
source $HOME/.config/nvim/plug-config/choosewin.vim
" Esearch
source $HOME/.config/nvim/plug-config/esearch.vim
" Indent line
source $HOME/.config/nvim/plug-config/indentline.vim
" NERDTree
source $HOME/.config/nvim/plug-config/nerdtree.vim
" NerdCommenter
source $HOME/.config/nvim/plug-config/nerdcommenter.vim
" Incsearch
source $HOME/.config/nvim/plug-config/incsearch.vim
" Ctrlp
source $HOME/.config/nvim/plug-config/ctrlp.vim
" Multicusor
source $HOME/.config/nvim/plug-config/multicursor.vim
" Vem-tabline
source $HOME/.config/nvim/plug-config/vemtabline.vim
" Utilsnip
source $HOME/.config/nvim/plug-config/ultisnips.vim
" Autopair
source $HOME/.config/nvim/plug-config/autopair.vim
" Undo-tree
source $HOME/.config/nvim/plug-config/undotree.vim
" Bookmark
source $HOME/.config/nvim/plug-config/vimbookmarks.vim
" Live server
source $HOME/.config/nvim/plug-config/browserlink.vim
