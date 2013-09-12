set nocompatible

filetype off "required by Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'vim-ruby/vim-ruby'
Bundle 'bufexplorer.zip'
Bundle 'Shougo/neocomplcache'
Bundle 'vim-scripts/JavaScript-Indent'
Bundle 'Railscasts-Theme-GUIand256color'
Bundle 'mileszs/ack.vim'
Bundle 'underlog/vim-PairTools'
Bundle 'kien/ctrlp.vim'

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

"CtrlP
nnoremap ,t :CtrlP<CR>
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_max_depth = 40
set wildignore=**/target/**,*.class

"hide the toolbar
set guioptions-=T

"hide the menu
set guioptions-=m

"line numbers
set number

"syntax highlighting
syntax on

set t_Co=256
colorscheme railscasts
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
