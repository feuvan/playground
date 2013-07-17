set background=light
colorscheme darkblue
set fileencodings=utf-8-bom,ucs-bom,utf-8,cp936,gbk,gb18030,ucs,big5

set nocompatible
set ruler
set backspace=indent,eol,start
set softtabstop=4
set shiftwidth=4
set tabstop=4
set showmatch
set incsearch
set hlsearch
set showcmd

set mouse=ar mousemodel=extend

set laststatus=2

set smartindent
set autoindent
set noexpandtab

"force 256 color
set t_Co=256

"pathogen
call pathogen#infect() 

"use airline instead
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

syntax on

filetype plugin indent on

map <F2> <Esc>:1,$!xmllint --format -<CR>

if ! has('gui_running')
	set ttimeoutlen=10
	augroup FastEscape
		autocmd!
		au InsertEnter * set timeoutlen=0
		au InsertLeave * set timeoutlen=1000
	augroup END
endif

function! ResCur()
	if line("'\"") <= line("$")
		normal! g`"
		return 1
	endif
endfunction

augroup resCur
	autocmd!
	autocmd BufWinEnter * call ResCur()
augroup END


"NERDTree
"open a NERDTree automatically when vim starts up if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif
"Ctrl-n to open NERDTree
map <C-n> :NERDTreeToggle<CR>
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"bufferline
let g:bufferline_echo=0
set statusline=%{bufferline#generate_string()}

"airline
let g:airline_theme='badwolf'

