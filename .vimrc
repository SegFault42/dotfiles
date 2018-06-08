set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"====================================Vim-Plugin=================================
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/L9'
Plugin 'othree/vim-autocomplpop'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/undotree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'vim-syntastic/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tomtom/tlib_vim'
Plugin 'Yggdroot/indentLine'
Plugin 'myusuf3/numbers.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'fatih/vim-go'
"====================================Vim-Plugin=================================

call vundle#end()            " required
filetype plugin indent on    " required

let g:Powerline_symbols = 'fancy'
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:indentLine_color_term = 239
let g:indentLine_char = '│'
let g:indentLine_enabled = 1

set smartindent
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
set noswapfile
set mouse=a
set cc=80
set hlsearch
set encoding=utf-8

colorscheme badwolf
syntax on
set nu

map <C-g> :NERDTreeToggle<CR>
nnoremap <F5> :UndotreeToggle<cr>
"========================switch between pane in split mode======================
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
