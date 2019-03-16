set nocompatible

" Plugins
call plug#begin('~/.vim/vim-plug-plugins')

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'fcpg/vim-orbital'

call plug#end()

" Syntastic settings
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

" NerdTree Settings
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1

" Plugin Hotkeys
nmap <F8> :TagbarToggle<CR>
nmap <F5> :NERDTreeToggle<CR>

" Colemak Hotkeys
for i in range(97,122)
  let c = nr2char(i)
  exec "map \e".c." <M-".c.">"
  exec "map! \e".c." <M-".c.">"
endfor

nnoremap <M-h> <Left>|
nnoremap <M-n> <Down>|
nnoremap <M-e> <Up>|
nnoremap <M-i> <Right>|

filetype plugin indent on

" Hard mode
noremap <Up> <Nop>
vnoremap <Up> <Nop>
inoremap <Up> <Nop>
noremap <LEFT> <Nop>
vnoremap <LEFT> <Nop>
inoremap <LEFT> <Nop>
noremap <DOWN> <Nop>
vnoremap <DOWN> <Nop>
inoremap <DOWN> <Nop>
noremap <RIGHT> <Nop>
vnoremap <RIGHT> <Nop>
inoremap <RIGHT> <Nop>


" Vim Settings
set timeoutlen=1000 ttimeoutlen=0

set tabstop=4
set shiftwidth=4
set expandtab

set number

set laststatus=2
set incsearch
set hlsearch

set encoding=UTF-8

syntax on

colorscheme orbital
