
"
" Disable vim vue preprocessors
let g:vue_disable_pre_processors=0

"autocmd FileType vue syntax sync fromstart

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
set noshowmode

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
" set relativenumber
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

" -- Autocmd

" autocmd InsertEnter * set norelativenumber
" autocmd InsertLeave * set relativenumber
"autocmd InsertLeave * :TlistUpdate

autocmd BufEnter * set colorcolumn=0
autocmd BufEnter * set tabstop=4
autocmd BufEnter * set shiftwidth=4

autocmd BufEnter *.py,*.cpp,*.hpp,*.h,*.c set colorcolumn=81

autocmd BufEnter *.sass set tabstop=2
autocmd BufEnter *.sass set shiftwidth=2
autocmd BufEnter *.yaml set tabstop=2
autocmd BufEnter *.yaml set shiftwidth=2
autocmd BufEnter *.yml set tabstop=2
autocmd BufEnter *.yml set shiftwidth=2
autocmd BufEnter *.json set tabstop=2
autocmd BufEnter *.json set shiftwidth=2

let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1

" -- vundle

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'airblade/vim-gitgutter'
Plugin 'alfredodeza/coveragepy.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'itchyny/lightline.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'rhysd/vim-grammarous'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/django.vim'
Plugin 'ambv/black'
Plugin 'w0rp/ale'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on

" -- python-mode
let g:pymode_run_bind = "R"
let g:pymode_lint_on_fly = 1
let g:pymode_virtualenv = 0
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_doc_bind = '<C-d>'

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

"set termguicolors
let g:onedark_termcolors=16
colorscheme onedark

" LightLine
let g:lightline = {'colorscheme': 'onedark'}
