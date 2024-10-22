call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
call plug#end()

filetype off
filetype plugin indent on
syntax on
set bg=dark
set backspace=indent,eol,start
set mouse=a
set belloff=all
set shiftwidth=2
set encoding=utf-8
set tabstop=2
set laststatus=2
set statusline+=%F
set number
set ignorecase
set hlsearch
set nocompatible
set smarttab
set cindent
set expandtab  
set ruler
set wrap
set smartindent
set hidden
set ttyfast
set showmode
set showcmd

