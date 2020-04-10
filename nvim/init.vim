set nocompatible              " required
filetype off                  " required
set hidden
set showtabline=0
set clipboard+=unnamedplus

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/Vundle.vim
call vundle#begin()

"call vundle#begin('~/some/path/here')
"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
"-------------------=== Code/Project navigation ===-------------
"Plugin 'vim-airline/vim-airline'            " Lean & mean status/tabline for vim
"Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
Plugin 'itchyny/lightline.vim'               " Lightline statusbar
Plugin 'MattesGroeger/vim-bookmarks'        " Bookmarks
Plugin 'thaerkh/vim-indentguides'           " Visual representation of indents
Plugin 'scrooloose/nerdtree'                " NerdTREE
Plugin 'arcticicestudio/nord-vim'           " Nord

"-------------------=== Other ===-------------------------------
Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
"Plugin 'chriskempson/base16-vim'            " Base 16 colors
Plugin 'reedes/vim-wordy'                   " Wordy
Plugin 'junegunn/fzf'                       " fuzzyfind

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype on
filetype plugin on
filetype plugin indent on

"=====================================================
"" General settings
"=====================================================
set encoding=utf-8
set laststatus=2
set mouse=a
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
colorscheme nord                             " nord theme
"let g:airline_theme='solarized'             " set airline theme
"let g:airline_solarized_bg='dark'           " solarized dark
"let g:airline#extensions#tabline#enabled = 1
syntax enable                               " enable syntax highlighting

set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default

set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files

set scrolloff=20                            " let 10 lines before/after cursor during scroll

set clipboard=unnamed                       " use system clipboard

set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...

"=====================================================
"" Tabs / Buffers settings
"=====================================================
tab sball
set switchbuf=useopen
set laststatus=2
nmap <F9> :bprev<CR>
nmap <F10> :bnext<CR>

"=====================================================
"" Relative Numbering 
"=====================================================
nnoremap <F4> :set relativenumber!<CR>

"=====================================================
"" Search settings
"=====================================================
set incsearch	                            " incremental search
set hlsearch	                            " highlight search results

"=====================================================
"" AirLine setting
"=====================================================
"let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tabline#formatter='unique_tail'

"=====================================================
"" Indent Guides Settings 
"=====================================================
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

"=====================================================
" NERDTree
"=====================================================
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"=====================================================
" Wordy
" ====================================================
noremap <silent> <F8> <C-u>:NextWordy<CR>

"=====================================================
" Spelling
"=====================================================
noremap <silent> <F5> :set spell! <CR>
