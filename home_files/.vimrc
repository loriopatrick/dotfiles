set nocompatible  " be iMproved, required
set hidden
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'bling/vim-airline' " cool status bar
Plugin 'airblade/vim-gitgutter' " git file changes
Plugin 'scrooloose/nerdtree' " file explorer
Plugin 'editorconfig/editorconfig-vim' " linting
Plugin 'Raimondi/delimitMate' " auto close brackets
Plugin 'kien/ctrlp.vim' " fuzzy search

" Lang Support
Plugin 'pangloss/vim-javascript'
Plugin 'groenewege/vim-less'
Plugin 'mxw/vim-jsx'
Plugin 'vim-scripts/cool.vim'
Plugin 'JuliaLang/julia-vim'
Plugin 'vim-scripts/psql.vim'
Plugin 'vim-scripts/cup.vim'
Plugin 'udalov/kotlin-vim'

" Colors
Plugin 'vim-scripts/summerfruit256.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'morhetz/gruvbox'
Plugin 'vim-scripts/darktango.vim'
Plugin 'vim-scripts/moria'

call vundle#end()            " required
filetype plugin indent on    " required


" Plugin Configs
let delimitMate_expand_cr = 1
let g:jsx_ext_required = 0 " jsx enable for .js files
let g:airline_powerline_fonts = 1 " use nice fonts for airline

autocmd FileType sql :let b:vimpipe_command="psql mydatabase"
autocmd FileType sql :let b:vimpipe_filetype="postgresql"

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
colorscheme PaperColor
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

" Allow mouse
set mouse=a
set ttymouse=xterm2

set so=5 " keep cursor 5 lines in window

set foldmethod=syntax foldlevel=999999 " set fold mode

" Open NERDTREE
nmap <C-p> :NERDTreeToggle<CR>

" Change split with arrow keys
nmap <silent> <Up> :wincmd k<CR>
nmap <silent> <Down> :wincmd j<CR>
nmap <silent> <Left> :wincmd h<CR>
nmap <silent> <Right> :wincmd l<CR>

" Change tab with shift arrow keys
nmap <silent> <S-Left> :tabp<CR>
nmap <silent> <S-Right> :tabn<CR>
imap <silent> <S-Left> <ESC>:tabp<CR>
imap <silent> <S-Right> <ESC>:tabn<CR>

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
nnoremap <S-j> jjjj
nnoremap <S-k> kkkk
nnoremap <S-l> $
vnoremap <S-h> ^
vnoremap <S-l> $
nnoremap <S-h> ^
nnoremap <silent> <C-r> :so $MYVIMRC<CR>

" Go to end of line
inoremap <S-Tab> <Esc><S-a>
nnoremap <S-Tab> $

" Enable spell check
noremap <C-s> :set spell!<CR>
set spelllang=en_us

" Open fuzzy file search
noremap <S-t> :CtrlP<CR>
