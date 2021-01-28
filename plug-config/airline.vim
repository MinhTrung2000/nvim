" Airline config.
" let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline#extensions#fzf#enabled = 0
let g:airline#extensions#gutentags#enabled = 0
" let g:airline#extensions#hunks#enabled = 0
let g:airline_detect_paste = 0
let g:airline_detect_modified = 0
let g:airline_detect_crypt = 0
" let g:airline_detect_spell = 0
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#open_lnum_symbol = '('
let airline#extensions#ale#close_lnum_symbol = ')'
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'

let g:airline#extensions#default#layout = [
	\ [ 'a', 'b', 'c' ],
	\ [ 'warning', 'error', 'y', 'z']
	\ ]

" Tag: *airline-predefined-parts
function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode'])
	let g:airline_section_b = airline#section#create(['branch'])
	let g:airline_section_c = airline#section#create_left(['%t'])
	let g:airline_section_y = airline#section#create(['spell', ' ', 'ffenc'])
	let g:airline_section_z = airline#section#create(['%l', '/', '%L', ' :' ,'%c'])
endfunction
autocmd VimEnter * call AirlineInit()
