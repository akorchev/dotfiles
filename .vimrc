set nocompatible

filetype off "required by Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'bufexplorer.zip'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/JavaScript-Indent'
Bundle 'jgdavey/vim-railscasts'
Bundle 'mileszs/ack.vim'

filetype indent plugin on

"mouse in terminal
set mouse=a
set ttymouse=xterm2

"BufferExplorer
nnoremap ,b :BufExplorer<CR>
nnoremap ,n :%s/\r//g<CR>

"Start in full screen
if has('win32')
    au GUIEnter * simalt ~x
endif

"hide the toolbar
set guioptions-=T

"hide the menu
set guioptions-=m

"line numbers
set number

"syntax highlighting
syntax on

"to avoid losing the colors
autocmd BufEnter * :syntax sync fromstart
set t_Co=256
colorscheme railscasts

"set the font
set guifont=Consolas:h11

"show white space
:set list listchars=tab:»·,trail:·

"tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"indentation
set autoindent
set smarttab

"avoid swap, temp and backup files
set nobackup
set nowritebackup
set noswapfile

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

"use the tags file in the project root
set tags=tags

"no folding please!
set nofoldenable

"remove trailin whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"dont continue comments when pushing o/O
set formatoptions-=o

"replace word under cursor
:nnoremap ,r :%s/\<<C-r><C-w>\>//g<Left><Left>
