"vim-plug plugins
call plug#begin('~/.vim/plugged')

Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdcommenter'
Plug 'hynek/vim-python-pep8-indent'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'groenewege/vim-less'
Plug 'mattn/emmet-vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

filetype plugin indent on

set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set history=700
set autoread
set autoindent
set number
set ignorecase
set smartcase
set showmatch
set encoding=utf-8
set smarttab
set hls
set ic
set ruler
"set cursorline
set wildmenu
set lazyredraw
set mouse=a
set clipboard=unnamed

set wildignore+=*.pyc " compiled Python files
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.sw? " Vim swap files

" enable all Python syntax highlighting features
let python_highlight_all = 1

" Searching
set incsearch
set hlsearch

syntax on

" Enable folding
set foldenable
set foldmethod=indent
set foldlevel=99


"Remap keys
let mapleader=" "

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

"split navigations
"Ctrl-j move to the split below
"Ctrl-k move to the split above
"Ctrl-l move to the split to the right
"Ctrl-h move to the split to the left
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>p :FZF<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>a :Ag 

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeShowHidden=1

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsEditSplit="vertical"
