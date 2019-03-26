set nocompatible

" Plugins
call plug#begin('~/.vim/vim-plug-plugins')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'valloric/youcompleteme'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'yggdroot/indentLine'
Plug 'morhetz/gruvbox'

call plug#end()

" Airline Settings
let g:airline_powerline_fonts=1
let g:airline_theme='simple'

" NerdTree Settings
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1

" UltiSnips Settings
" let g:UltiSnipsExpandTrigger="<CR>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" Hotkeys
map <Space> <Leader>
nnoremap <Leader>T :TagbarToggle<CR>
nnoremap <Leader>N :NERDTreeToggle<CR>
nnoremap <Leader>p :FZF<CR>

" Colemak Hotkeys
for i in range(97,122)
    let c = nr2char(i)
    exec "map \e".c." <M-".c.">"
    exec "map! \e".c." <M-".c.">"
endfor

nnoremap <M-h> <Left>
nnoremap <M-n> <Down>
nnoremap <M-e> <Up>
nnoremap <M-i> <Right>

nnoremap <Leader>h <Left>
nnoremap <Leader>n <Down>
nnoremap <Leader>e <Up>
nnoremap <Leader>i <Right>

nnoremap <C-h> <C-w><Left>
nnoremap <C-n> <C-w><Down>
nnoremap <C-e> <C-w><Up>
nnoremap <C-i> <C-w><Right>

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
set ttimeout
augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
augroup END

set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set laststatus=2
set incsearch
set hlsearch

set encoding=UTF-8

syntax on

" Appearance Settings
set termguicolors
let g:gruvbox_sign_column='dark0_hard'
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic=1
let g:gruvbox_invert_selection=0
set background=dark

colorscheme gruvbox
