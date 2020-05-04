" ==================== PLUGINS ==================== "

call plug#begin('~/.vim/vim-plug-plugins')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ayu-theme/ayu-vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'valloric/youcompleteme'
Plug 'sirver/ultisnips'
Plug 'morhetz/gruvbox'
Plug 'machakann/vim-highlightedyank'
Plug 'timakro/vim-searchant'
Plug 'osyo-manga/vim-brightest'
Plug 'yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tridactyl/vim-tridactyl'

call plug#end()

" Airline Settings
let g:airline_powerline_fonts=1
let g:airline_theme='simple'

" Ayu Settings
let ayucolor="dark"
colorscheme ayu

" NerdTree Settings
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1

" UltiSnips Settings
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" Auto-Pairs Settings
let g:AutoPairsShortcutJump = '<M-1>'


" ==================== HOTKEYS ==================== "

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


" ==================== VIM SETTINGS ==================== "

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
set hidden
set hlsearch
set encoding=UTF-8
set scrolloff=10

" Appearance Settings
set termguicolors
set background=dark

highlight VertSplit guifg=#665c54 guibg=#665c54
