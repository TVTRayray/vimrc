let mapleader=" "
syntax on
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

map sl :set splitright<CR>:vsplit<CR>

map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>

map <LEADER>l <C-w>l
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h

map <up> :res -5<CR>
map <down> :res +5<CR>
map <left> :vertical resize+5<CR>
map <right> :vertical resize-5<CR>
map tt :tabe<CR>
map t<left> :-tabnext<CR>
map t<right> :+tabnext<CR>
noremap <LEADER><CR> :nohlsearch<CR>
set number
set cursorline
set wrap
set showcmd
set wildmenu
noremap J 5j
noremap K 5k
noremap L 5l
noremap H 5h

set hlsearch
set incsearch
exec "nohlsearch"
set ignorecase
set smartcase

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" nerdtree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
Plug 'Valloric/YouCompleteMe'


call plug#end()


set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8

" Prevent incorrect backgroung rendering
let &t_ut=''

" Better tab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5

" Better backspace
set backspace=indent,eol,start

" === Status/command bar
" ===
set laststatus=2
set autochdir
set showcmd
set formatoptions-=tc

" === Restore Cursor Position
" ===
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" === NERDTree
map ff :NERDTreeToggle<CR>
