set hidden
filetype off " required

" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline' " cool status bar
Plug 'airblade/vim-gitgutter' " git file changes
Plug 'scrooloose/nerdtree' " file explorer
Plug 'editorconfig/editorconfig-vim' " linting

" Lang Support
Plug 'othree/yajs.vim'
Plug 'groenewege/vim-less'
Plug 'JuliaLang/julia-vim'
Plug 'exu/pgsql.vim'
Plug 'udalov/kotlin-vim'
Plug 'wting/rust.vim'

" Colors
Plug 'vim-scripts/summerfruit256.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'vim-scripts/darktango.vim'
Plug 'vim-scripts/moria'

call plug#end()
filetype plugin indent on    " required

" Enable postgres highlighting on .sql
let g:sql_type_default = 'pgsql'

" Speed up regex
set re=1

" Plugin Configs
let delimitMate_expand_cr = 1
let g:jsx_ext_required = 0 " jsx enable for .js files
let g:airline_powerline_fonts = 1 " use nice fonts for airline

autocmd FileType sql :let b:vimpipe_command="psql mydatabase"
autocmd FileType sql :let b:vimpipe_filetype="postgresql"

" Share clipboard between instances
set clipboard=unnamedplus

" No more swap and back files
set nobackup
set noswapfile

" Indnet suff
set autoindent
set copyindent

" Search case
set ignorecase
set smartcase

syntax on " syntax highlight
set number " show line numbers
set laststatus=2 " show airline

" Add menu add bottom for page for tab completion
set wildmenu
set wildmode=list:longest,full

" improve render speed
set ttyfast
set lazyredraw

" set theme
colorscheme gruvbox
set background=dark

" fix tab and backspace
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab

set cursorline " highlight current line

" Highlight search 
set hlsearch
set incsearch
set smartcase

set so=5 " keep cursor 5 lines in window

set foldmethod=syntax foldlevel=999999 " set fold mode

" Open NERDTREE
nmap <C-p> :NERDTreeToggle<CR>

if has('nvim')
    nmap <BS> <C-W>h
endif

" Change tab
nmap <silent> <C-h> :tabp<CR>
nmap <silent> <C-l> :tabn<CR>
imap <silent> <C-h> <ESC>:tabp<CR>
imap <silent> <C-l> <ESC>:tabn<CR>

" Resize window commands
nnoremap <silent> + :exe "resize " . (winheight(0) * 8/7)<CR>
nnoremap <silent> _ :exe "resize " . (winheight(0) * 7/8)<CR> 
nnoremap <silent> = :exe "vertical resize " . (winwidth(0) * 8/7)<CR>
nnoremap <silent> - :exe "vertical resize " . (winwidth(0) * 7/8)<CR>

" Quit commands
nmap <S-s> :write<CR>
nmap <S-q> :qall<CR>
nmap <S-w> :q<CR>

" Clear search highlight
nmap <silent> <S-m> :nohl<CR>

" Move quickly
nmap <S-j> jjjj
nmap <S-k> kkkk
vmap <S-j> jjjj
vmap <S-k> kkkk
nmap <S-l> $
vmap <S-h> ^
vmap <S-l> $
nmap <S-h> ^

" Go to end of line
inoremap <S-Tab> <Esc><S-a>
nnoremap <S-Tab> $

" Enable spell check
" noremap <C-s> :set spell!<CR>
" set spelllang=en_us
