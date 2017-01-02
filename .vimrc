set nocompatible
filetype off

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 
"if has('gui_running')
	"set background=dark
	"colorscheme solarized
"else
	"colorscheme Zenburn
"endif

" press <F5> to switch between Dark and Light for Solarized color scheme
"call togglebg#map("<F5>")

let python_highlight_all=1


"let g:airline_powerline_fonts = 1
" 是否启用顶部tabline
"let g:airline#extensions#tabline#enabled = 1
" 顶部tabline显示方式
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
set number
set guifont=Monaco:h13
syntax on
let g:solarized_termcolors=256
set background=dark
"set background=light
colorscheme solarized
"set nowrap
set fileformat=unix
set tabstop=4
set shiftwidth=4
set showmatch
set scrolloff=2
set laststatus=2
set backspace=2
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase
set incsearch
set hlsearch
set noexpandtab
set whichwrap+=,h,l
set autoread
set cursorline
set cursorcolumn

"map <ESC> to jk
inoremap jk <ESC>

" Visual Mode, to enable '.' function

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
"Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'scrooloose/syntastic'
"Plugin 'nvie/vim-flake8'
"Plugin 'vim-scripts/indentpython.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on

"NERD Tree setting start" 
"F2 Turn On/off the NERD Tree"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"Display label"
let NERDTreeShowBookmarks=1
"NERD Tree would ignore below File type"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"Window size"
let NERDTreeWinSize=25
"NERD Tree setting End"

"IndentLine setting start"
"let g:indentLine_enabled = 1
"let g:indentLine_color_term = 239
"set conceallevel=1
"let g:indentLine_conceallevel=1
"let g:indentLine_char = '│'
"let g:indentLine_color_term = 000
"IndentLine setting End"

"autopep8 setting
"let g:autopep8_disable_show_diff=1

"nerdcommenter setting
map <F4> <leader>ci <CR>

" Encoding issue setting for Chinese Character
set enc=utf-8
"set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set guifont=Monco:h13
set guifontwide=NSimsun:h12
"set guifont=Monco:h15
"set guifontwide=NSimsun:h14

" Enable folding
set foldmethod=indent
set foldlevel=9

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" <F5> to run the python automatically 
nnoremap <silent> <F5> :!clear;python %<CR>
