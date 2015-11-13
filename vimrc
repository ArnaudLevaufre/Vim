"
" == VIM configuration - Arnaud ==
"
set nocompatible
set encoding=utf-8
set noswf
set undofile
set undodir=/home/arnaud/.vim/undodir
set timeoutlen=1000
set ttimeoutlen=50

" -- Shortcuts and mapping

map <SPACE> <leader>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap jj <ESC>

" -- GUI Display modifications

set title
set relativenumber
set number
set showcmd
set wildmenu
set scrolloff=5
set cursorline
set laststatus=2

" -- Search

set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <leader>/ :noh <CR>

" -- Typing behavior

set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set autoindent
set nowrap
set expandtab
set smarttab


" -- File specific behavior

set autoread

" -- Completion

set omnifunc=syntaxcomplete#Complete

" -- code folding

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=10
set foldcolumn=0

" -- Color scheme
syntax enable

if &term=~'linux'
	set t_Co=16
	colorscheme ttycustom
else
	set t_Co=256
	colorscheme custom
endif


" -- Autocmd

autocmd InsertEnter * set norelativenumber
autocmd InsertLeave * set relativenumber

autocmd BufEnter * set colorcolumn=0
autocmd BufEnter * set tabstop=4
autocmd BufEnter * set shiftwidth=4

autocmd BufEnter *.py,*.cpp,*.hpp,*.h,*.c set colorcolumn=81

autocmd BufEnter *.sass set tabstop=2
autocmd BufEnter *.sass set shiftwidth=2

let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1

" -- vundle

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'rstacruz/sparkup'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on


" -- Ultisnips configuration

let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsEditSplit="vertical"

