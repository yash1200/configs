call plug#begin('~/.config/nvim/bundle')
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'ryanoasis/vim-devicons'
Plug 'Nopik/vim-nerdtree-direnter'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'BurntSushi/ripgrep'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'zchee/deoplete-jedi'
Plug 'altercation/vim-colors-solarized'
Plug 'trevordmiller/nova-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'vimlab/split-term.vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf'
Plug 'liuchengxu/vim-which-key'
" call PlugInstall to install new plugins
call plug#end()

" basics
filetype plugin indent on
syntax on set number

set relativenumber
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set mouse=a
set shiftwidth=4
set expandtab
set splitbelow splitright
set t_Co=256
set encoding=utf8
" preferences
set clipboard+=unnamedplus
inoremap jk <ESC>
" whichkey prefs
let g:colorizer_auto_color = 1
let g:colorizer_syntax = 1
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
let NERDTreeMapOpenInTab='<ENTER>'
let g:mkdp_auto_start = 1
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

set pastetoggle=<F2>
" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Stay in visual mode when indenting. You will never have to run gv after
" performing an indentation.
vnoremap < <gv
vnoremap > >gv
" Make Y yank everything from the cursor to the end of the line. This makes Y
" act more like C or D because by default, Y yanks the current line (i.e. the
" same as yy).
noremap Y y$
" navigate split screens easily
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" change spacing for language specific
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" plugin settings

" deoplete
let g:deoplete#enable_at_startup = 1
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Theme
syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark
colorscheme palenight
let g:airline_theme = "palenight"
let g:lightline = { 'colorscheme': 'palenight' }
let g:palenight_terminal_italics=1

"NERDTree
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

let g:jsx_ext_required = 0
:set number relativenumber

