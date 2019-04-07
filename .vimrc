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
Plug 'jiangmiao/auto-pairs'
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

" Auto-Pairs Settings
let g:AutoPairsShortcutJump = '<M-1>'

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

vnoremap <M-h> <Left>
vnoremap <M-n> <Down>
vnoremap <M-e> <Up>
vnoremap <M-i> <Right>

onoremap <M-h> <Left>
onoremap <M-n> <Down>
onoremap <M-e> <Up>
onoremap <M-i> <Right>

nnoremap <Leader>h <Left>
nnoremap <Leader>n <Down>
nnoremap <Leader>e <Up>
nnoremap <Leader>i <Right>

vnoremap <Leader>h <Left>
vnoremap <Leader>n <Down>
vnoremap <Leader>e <Up>
vnoremap <Leader>i <Right>

onoremap <Leader>h <Left>
onoremap <Leader>n <Down>
onoremap <Leader>e <Up>
onoremap <Leader>i <Right>

nnoremap <C-h> <C-w><Left>
nnoremap <C-n> <C-w><Down>
nnoremap <C-e> <C-w><Up>
nnoremap <C-i> <C-w><Right>

filetype plugin indent on

" Hard mode
let g:HardModeEnabled=1
command! ToggleHardMode call ToggleHardMode()

function! ToggleHardMode()
    if g:HardModeEnabled
        call DisableHardMode()
    else
        call EnableHardMode()
    endif
endfunction

function! EnableHardMode()
    let g:HardModeEnabled=1

    set mouse=""

    nnoremap <Left> <Nop>
    nnoremap <Down> <Nop>
    nnoremap <Up> <Nop>
    nnoremap <Right> <Nop>

    vnoremap <Left> <Nop>
    vnoremap <Down> <Nop>
    vnoremap <Up> <Nop>
    vnoremap <Right> <Nop>

    inoremap <Left> <Nop>
    inoremap <Down> <Nop>
    inoremap <Up> <Nop>
    inoremap <Right> <Nop>
endfunction

function! DisableHardMode()
    let g:HardModeEnabled=0

    set mouse="a"

    nnoremap  <Left> <Left>
    nnoremap  <Down> <Down>
    nnoremap  <Up> <Up>
    nnoremap  <Right> <Right>

    vnoremap  <Left> <Left>
    vnoremap  <Down> <Down>
    vnoremap  <Up> <Up>
    vnoremap  <Right> <Right>

    inoremap  <Left> <Left>
    inoremap  <Down> <Down>
    inoremap  <Up> <Up>
    inoremap  <Right> <Right>
endfunction

call EnableHardMode()

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

set hidden
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

highlight VertSplit guifg=#665c54 guibg=#665c54
