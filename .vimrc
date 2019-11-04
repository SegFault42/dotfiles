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
"Plugin 'Valloric/YouCompleteMe'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'rhysd/vim-clang-format'
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/undotree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'vim-syntastic/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tomtom/tlib_vim'
Plugin 'Yggdroot/indentLine'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'fatih/vim-go'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'sheerun/vim-polyglot'
Plugin 'paretje/nvim-man'
Plugin 'Shougo/deoplete.nvim'
Plugin 'tpope/vim-endwise'
Plugin 'chrisbra/Colorizer'
Plugin 'prettier/vim-prettier'
Plugin 'mhinz/vim-startify'
"Plugin 'vim-scripts/AutoComplPop'
Plugin 'ternjs/tern_for_vim'
Plugin 'xavierd/clang_complete'

"colorscheme
Plugin 'mhartington/oceanic-next'
Plugin 'sjl/badwolf'
Plugin 'whatyouhide/vim-gotham'
Plugin 'morhetz/gruvbox'
Plugin 'nanotech/jellybeans.vim'
Plugin 'jacoborus/tender.vim'
Plugin 'vim-scripts/matrix.vim--Yang'

"====================================Vim-Plugin=================================

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

" Load powerline fonts (Hack in my case)
let g:airline_powerline_fonts = 1

let g:Powerline_symbols = 'fancy'
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:indentLine_color_term = 239
let g:indentLine_char = '│'
let g:indentLine_enabled = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1

"vim ariline
let g:airline_theme='gruvbox' "or hybrid
let g:airline_powerline_fonts = 1  "for icons vim-devicons
let g:hybrid_reduced_contrast = 1
let g:hybrid_custom_term_colors = 1
let g:airline#extensions#tabline#enabled = 1

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" disable hide json double quote
let g:indentLine_setConceal = 0

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

" Use italics in things like comments and properties<Paste>
hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic
highlight Comment cterm=italic

"===========colorscheme
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif
colorscheme gruvbox
set background=dark    " Setting dark mode

syntax on
set nu

map <C-g> :NERDTreeToggle<CR>
nnoremap <F5> :UndotreeToggle<cr>

nmap <F8> :TagbarToggle<CR>
"========================switch between pane in split mode======================
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

noremap + :vertical resize +1<CR>
noremap - :vertical resize -1<CR>
noremap ~ <C-w>=

:set backspace=indent,eol,start
set runtimepath+=~/.vim-plugins/LanguageClient-neovim

"For youcompleteme"
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_global_ycm_extra_conf = "/home/segfault42/.vim/bundle/.ycm_extra_conf.py"

"Autocompletion JS"
set omnifunc=syntaxcomplete#Complete

" Golang
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

"==Clang Complete plugin=="
let g:clang_use_library=1
" if there's an error, allow us to see it
let g:clang_complete_copen=1
let g:clang_complete_macros=1
let g:clang_complete_patterns=0
" Limit memory use
let g:clang_memory_percent=70
" Remove -std=c++11 if you don't use C++ for everything like I do.
let g:clang_user_options=' -std=c++11 || exit 0'
" Set this to 0 if you don't want autoselect, 1 if you want autohighlight,
" and 2 if you want autoselect. 0 will make you arrow down to select the first
" option, 1 will select the first option for you, but won't insert it unless you
" press enter. 2 will automatically insert what it thinks is right. 1 is the most
" convenient IMO, and it defaults to 0.
let g:clang_auto_select=1

set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
" The single one that works with clang_complete
let g:clang_snippets_engine='clang_complete'
