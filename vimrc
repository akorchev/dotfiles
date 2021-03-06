set nocompatible

filetype off "required by Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle setup
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-eunuch'
Plugin 'vim-ruby/vim-ruby'
Plugin 'bufexplorer.zip'
Plugin 'airblade/vim-gitgutter'
Plugin 'Railscasts-Theme-GUIand256color'
Plugin 'mileszs/ack.vim'
Plugin 'underlog/vim-PairTools'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/syntastic'
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'briancollins/vim-jst'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'othree/yajs.vim'
Plugin 'elzr/vim-json'
Plugin 'othree/html5.vim'
Plugin 'editorconfig/editorconfig-vim'

"Disable fancy concealing of attribute quotes.
let g:vim_json_syntax_conceal = 0

Plugin 'mxw/vim-jsx'
call vundle#end()

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_javascript_eslint_exec = 'eslint_d'

let g:syntastic_typescript_tsc_fname = ''
let g:syntastic_json_checkers=["jsonlint"]

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

let g:jsx_ext_required = 0

let g:airline_enable_fugitive=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'

filetype indent plugin on

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
set wildignore=**/node_modules/**

if has('gui_running')

"ignore case in filename completion
set wildignorecase

end

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
set tabstop=2
set shiftwidth=2
set softtabstop=2
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
    set macligatures
    set guifont=Fira\ Code:h16
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
autocmd BufReadPost *.tpl set filetype=jinja

"replace word under cursor
nnoremap ,r :%s/\<<C-r><C-w>\>//g<Left><Left>
