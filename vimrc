" General configuration

set autoread
set encoding=utf-8
set exrc
set foldmethod=manual
set lazyredraw
set nocompatible
set noshowmode
set noswf
set secure
set timeoutlen=1000
set ttimeoutlen=50
set undodir=~/.vim/undodir
set undofile

" GUI Display modifications

set cursorline
set laststatus=2
set number
set scrolloff=5
set showcmd
set title
set wildignore=*.o,*.pyc
set wildmenu

" Search

set hlsearch
set ignorecase
set incsearch
set smartcase

" Typing behavior

set autoindent
set backspace=indent,eol,start
set expandtab
set nowrap
set shiftwidth=4
set smartindent
set smarttab
set tabstop=4

" Shortcuts and mapping

map <SPACE> <leader>

map <leader>v :vsplit ~/.vim/vimrc<CR>
map <leader>r :source ~/.vim/vimrc<CR>
map <leader>se :set spell spelllang=en_gb<CR>
map <leader>sf :set spell spelllang=fr<CR>
map <leader>sx :set nospell<CR>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap jj <ESC>

nnoremap <leader>/ :noh <CR>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Autocmd

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

" Plugins management
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin("~/.vim/bundle")

Plug 'Valloric/YouCompleteMe', {'do': 'python install.py --clang-completer --rust-completer --ts-completer'}
Plug 'airblade/vim-gitgutter'
Plug 'ambv/black'
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'kien/ctrlp.vim'
Plug 'posva/vim-vue'
Plug 'rhysd/vim-grammarous'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'

call plug#end()
filetype plugin indent on

" Plugins configuration

" Grammarous
let g:grammarous#use_vim_spelllang = 1

" LightLine
let g:lightline = {'colorscheme': 'onedark'}

" CtrlP
let g:ctrlp_custom_ignore = {'dir': 'node_modules'}
let g:ctrlp_switch_buffer = 0

" Completion for rust with YouCompleteMe
if executable("rustc")
    let rust_src_dir = system("rustc --print sysroot") . "/lib/rustlib/src/rust/src"
    if isdirectory(rust_src_dir)
        let g:ycm_rust_src_path = ycm_rust_src_path
    endif
endif

" Disable vim vue preprocessors
let g:vue_disable_pre_processors=0

" Syntax highlighting
syntax enable

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
else
    let g:onedark_termcolors=16
endif
colorscheme onedark
"
" Ensure vue files coloration work properly
autocmd FileType vue syntax sync fromstart

