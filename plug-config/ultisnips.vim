let g:UltiSnipsExpandTrigger='<c-space>'
let g:UltiSnipsListSnippets = '<c-tab>'

" shortcut to go to next position
let g:UltiSnipsJumpForwardTrigger='<c-j>'

" shortcut to go to previous position
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsSnippetDirectories = ["~/.config/nvim/snips", "UltiSnips"]

" Disable looking for SnipMate snippets in &runtimepath
let g:UltiSnipsEnableSnipMate = 0

let g:ultisnips_python_style = "sphinx"

" Doc line 267
inoremap <c-x><c-k> <c-x><c-k>



