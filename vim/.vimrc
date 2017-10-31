set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'dylanaraps/wal'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'file:///home/rorix/.vim/bundle/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline'
Plugin 'file:///home/rorix/.vim/bundle/python-mode'
Plugin 'vim-airline/vim-airline'
Plugin 'fs111/pydoc.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'chase/vim-ansible-yaml'
Plugin 'plasticboy/vim-markdown'
Plugin 'mboughaba/i3config.vim'
Plugin 'digitaltoad/vim-jade'
call vundle#end()

execute pathogen#infect()

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

map <F2> :NERDTreeToggle<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

set number
set smartindent
set autoindent
set shiftwidth=4
set tabstop=4
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set nocp
set spell spelllang=en_us

let g:ansible_options = {'ignore_blank_lines': 0}
let g:ansible_options = {'documentation_mapping': '<C-K>'}
