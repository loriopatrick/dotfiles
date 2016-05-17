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

" Lang Support
Plugin 'pangloss/vim-javascript'
Plugin 'groenewege/vim-less'
Plugin 'JuliaLang/julia-vim'
Plugin 'vim-scripts/psql.vim'
Plugin 'udalov/kotlin-vim'
Plugin 'wting/rust.vim'

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

" Change split with arrow keys
nmap <silent> <C-h> :wincmd k<CR>
nmap <silent> <C-l> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

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
nmap <silent> <C-r> :so $MYVIMRC<CR>

" Go to end of line
inoremap <S-Tab> <Esc><S-a>
nnoremap <S-Tab> $

" Enable spell check
" noremap <C-s> :set spell!<CR>
" set spelllang=en_us
