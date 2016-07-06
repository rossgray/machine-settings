"vim-plug plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'numkil/ag.nvim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdcommenter'
Plug 'hynek/vim-python-pep8-indent'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'groenewege/vim-less'
Plug 'mattn/emmet-vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ntpeters/vim-better-whitespace'
Plug 'majutsushi/tagbar'
" Theme
Plug 'mhartington/oceanic-next'

call plug#end()



" Options

set clipboard+=unnamedplus
set number
set ignorecase
set diffopt+=vertical

" Enable folding
set foldenable
set foldmethod=indent
set foldlevel=99


" Remap keys
let mapleader=" "

"split navigations
"Ctrl-j move to the split below
"Ctrl-k move to the split above
"Ctrl-l move to the split to the right
"Ctrl-h move to the split to the left
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" toggle folding
nnoremap <leader><space> za
" turn off search highlight
nnoremap <leader>h :nohlsearch<CR>

nnoremap <leader>p :FZF<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>a :Ag 
nnoremap <leader>t :TagbarToggle<CR>

" Format JSON
nmap =j :%!python -m json.tool<CR>
" Format XML
nmap =x :%!xmllint --format -<CR>

" Theme
syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme OceanicNext
set background=dark
let g:airline_theme='oceanicnext'


" Plugin options
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeShowHidden=1

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsEditSplit="vertical"

