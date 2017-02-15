"vim-plug plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer --gocode-completer' }
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdcommenter'
Plug 'hynek/vim-python-pep8-indent'
Plug 'pangloss/vim-javascript'
Plug 'fatih/vim-go'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'groenewege/vim-less'
Plug 'mattn/emmet-vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ntpeters/vim-better-whitespace'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-projectionist'
" Theme
Plug 'mhartington/oceanic-next'

call plug#end()



" Options

set clipboard+=unnamedplus
set number
set ignorecase
set diffopt+=vertical
set tabstop=4
set shiftwidth=4

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
nnoremap <leader>a :Ack 
nnoremap <leader>t :TagbarToggle<CR>

" Format JSON
nmap =j :%!python -m json.tool<CR>
" Format XML
nmap =x :%!xmllint --format -<CR>

" Exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Theme
syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme OceanicNext
set background=dark
let g:airline_theme='oceanicnext'


" Python provider
" We've created virtualenvs for neovim
let g:python_host_prog = '/Users/ross/.virtualenvs/neovim/bin/python'
let g:python3_host_prog = '/Users/ross/.virtualenvs/neovim3/bin/python'


" Plugin options
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
let g:ackhighlight = 1
let g:ack_autoclose = 1

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeShowHidden=1

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsEditSplit="vertical"

" Go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" Filetypes
" Go Ace templates
au BufNewFile,BufRead *.ace set filetype=ace

