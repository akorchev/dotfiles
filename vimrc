set nocompatible

filetype off "required by Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle setup
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-eunuch'
Bundle 'vim-ruby/vim-ruby'
Bundle 'bufexplorer.zip'
Bundle 'airblade/vim-gitgutter'
Bundle 'Shougo/neocomplcache'
Bundle 'vim-scripts/JavaScript-Indent'
Bundle 'Railscasts-Theme-GUIand256color'
Bundle 'mileszs/ack.vim'
Bundle 'underlog/vim-PairTools'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'bling/vim-airline'
Bundle 'chriskempson/base16-vim'
let g:airline_enable_fugitive=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'

let g:user_emmet_mode='a'
let user_emmet_expandabbr_key='<C-Y>'

filetype indent plugin on

let g:neocomplcache_enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

"mouse in terminal
set mouse=a
set ttymouse=xterm2
set ttyfast
set lazyredraw

"BufferExplorer
nnoremap ,b :BufExplorer<CR>
nnoremap ,n :%s/\r//g<CR>

nnoremap <silent> <C-TAB> :bn<CR>
nnoremap <silent> <C-S-TAB> :bp<CR>
inoremap <silent> <C-TAB> <ESC>:bn<CR>
inoremap <silent> <C-S-TAB> <ESC>:bp<CR>

"CtrlP
nnoremap ,t :CtrlP<CR>
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_max_depth = 40
set wildignore=**/target/**,*.class

"ignore case in filename completion
set wildignorecase

"hide the toolbar
set guioptions-=T

"hide the menu
set guioptions-=m

"line numbers
set number

"syntax highlighting
syntax on

set t_Co=256
set background=dark
colorscheme base16-monokai
"show white space
set list listchars=tab:»·,trail:·

"tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"indentation
set autoindent
set smarttab

set noswapfile
set nobackup

"make backspace work like most other apps
set backspace=indent,eol,start

"setup window
winpos 0 0

"show the cursor position all the time
set ruler

"display incomplete commands
set showcmd

"disable arrow keys completely
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"use C-s for saving
noremap <C-s> :w<CR>
inoremap <C-s> <C-O>:w<CR>

inoremap <C-Space> <C-X><C-L>

nmap <silent> ,e :e $MYVIMRC<cr>
nmap <silent> ,s :so $MYVIMRC<cr>

"do not move the cursor after copy in visual mode
vmap y y`]

"completion
set completeopt=longest,menuone

" gui options
if has("gui_gtk2")
    set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 11
elseif has("gui_macvim")
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
elseif has("gui_win32")
    set guifont=Consolas:h11
end
set anti

"searching
set ignorecase
set smartcase
set incsearch
set showmatch
set nohlsearch

"better command line completion
set wildmenu

"don't wrap lines
set nowrap

"always show the status line
set laststatus=2

set hidden

"no folding please!
set nofoldenable

"remove trailin whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufReadPost *.cshtml set filetype=html

"replace word under cursor
nnoremap ,r :%s/\<<C-r><C-w>\>//g<Left><Left>

"use ag instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column --smart-case'
