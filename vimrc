
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
set exrc
set secure

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

"set omnifunc=syntaxcomplete#Complete

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

autocmd BufEnter /home/arnaud/projects/arctivities-web/*.css set tabstop=2
autocmd BufEnter /home/arnaud/projects/arctivities-web/*.css set shiftwidth=2
"autocmd BufEnter /home/arnaud/projects/arctivities-web/*.js set tabstop=2
"autocmd BufEnter /home/arnaud/projects/arctivities-web/*.js set shiftwidth=2
"autocmd BufEnter /home/arnaud/projects/arctivities-web/*.vue set tabstop=2
"autocmd BufEnter /home/arnaud/projects/arctivities-web/*.vue set shiftwidth=2


let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1

" -- Plugin managements

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin("~/.vim/bundle")

Plug 'airblade/vim-gitgutter'
Plug 'ambv/black'
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'kien/ctrlp.vim'
Plug 'mhartington/nvim-typescript'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-cssomni'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-racer'
Plug 'ncm2/ncm2-tern'
Plug 'neovim/python-client'
Plug 'rhysd/vim-grammarous'
Plug 'roxma/nvim-yarp'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'

call plug#end()
filetype plugin indent on

" -- python-mode
let g:pymode = 0
let g:pymode_rope = 0

" -- ncm2 completion

autocmd BufEnter * call ncm2#enable_for_buffer()
set shortmess+=c
set completeopt=noinsert,menuone,noselect,preview
set cot+=preview
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" -- Language client
nnoremap <F5> :call LanguageClient_contextMenu()<CR>

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/home/arnaud/.local/bin/pyls'],
    \ }


nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" -- taglist
"let Tlist_Use_Right_Window = 1
"let Tlist_Display_Prototype = 1
"let Tlist_Enable_Fold_Column = 0
"let Tlist_Exit_OnlyWindow = 1
"let Tlist_GainFocus_On_ToggleOpen = 1
"let Tlist_Close_On_Select = 1
"let Tlist_WinWidth = 50

" -- Grammarous
let g:grammarous#use_vim_spelllang = 1

"set termguicolors
let g:onedark_termcolors=16
colorscheme onedark

" LightLine
let g:lightline = {'colorscheme': 'onedark'}
