"
" == VIM configuration - Arnaud ==
set nocompatible
set encoding=utf-8
set noswf
set undofile
set undodir=/home/arnaud/.vim/undodir
set timeoutlen=1000
set ttimeoutlen=50
set lazyredraw

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

map <leader>v :vsplit ~/.vim/vimrc<CR>
map <leader>r :source ~/.vim/vimrc<CR>
map <leader>u :UltiSnipsEdit<CR>

map <leader>se :set spell spelllang=en_gb<CR>
map <leader>sf :set spell spelllang=fr<CR>
map <leader>sx :set nospell<CR>
map <leader>cr :Coveragepy report<CR>
map <leader>cs :Coveragepy session<CR>

map <leader>t :TlistToggle<CR>

" -- GUI Display modifications

set title
set relativenumber
set number
set showcmd
set wildmenu
set wildignore=*.o,*.pyc
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
set smartindent
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
autocmd InsertLeave * :TlistUpdate

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
Plugin 'othree/html5.vim'
Plugin 'klen/python-mode'
Plugin 'vim-scripts/django.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'benmills/vimux'
Plugin 'alfredodeza/coveragepy.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'rhysd/vim-grammarous'

call vundle#end()
filetype plugin indent on


" -- Ultisnips configuration

let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsEditSplit="vertical"



" -- python-mode
let g:pymode_run_bind = "R"
let g:pymode_lint_on_fly = 1
let g:pymode_virtualenv = 0
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_doc_bind = '<C-d>'

" -- vimux
nnoremap <leader>b :call VimuxRunCommand("make")<CR>

" -- taglist
let Tlist_Use_Right_Window = 1
let Tlist_Display_Prototype = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_WinWidth = 50

" -- Grammarous
let g:grammarous#use_vim_spelllang = 1

