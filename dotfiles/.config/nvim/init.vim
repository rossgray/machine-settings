"vim-plug plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdcommenter'
Plug 'hynek/vim-python-pep8-indent'
Plug 'pangloss/vim-javascript'
Plug 'fatih/vim-go'
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ntpeters/vim-better-whitespace'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-projectionist'
Plug 'posva/vim-vue'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'zchee/deoplete-jedi'
" Theme
Plug 'joshdick/onedark.vim'

call plug#end()



" Options

set clipboard+=unnamedplus
set mouse=a
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
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>a :Ack! 
nnoremap <leader>c :TagbarToggle<CR>

" Format JSON
nmap =j :%!python -m json.tool<CR>
" Format XML
nmap =x :%!xmllint --format -<CR>

" Exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Theme
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme onedark
set background=dark
let g:airline_theme='onedark'


" Python provider
" We've created virtualenvs for neovim
let g:python_host_prog = $WORKON_HOME . '/neovim/bin/python'
let g:python3_host_prog = $WORKON_HOME . '/neovim3/bin/python'


" Plugin options

" Airline
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#ale#enabled = 1

" FZF
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

" Ale
let g:ale_linters = {
\   'javascript': ['eslint'],
\	'python': ['flake8']
\}

" Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
let g:ackhighlight = 1
let g:ack_autoclose = 1

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeShowHidden=1

let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsEditSplit="vertical"

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = "$GOPATH.'/bin/gocode'"

" supertab
" let g:SuperTabClosePreviewOnPopupClose = 1

" Filetypes
" Go Ace templates
au BufNewFile,BufRead *.ace set filetype=ace

