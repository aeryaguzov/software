" files
set encoding=utf8
set ffs=unix,dos,mac
" search
set hlsearch
set incsearch
set smartcase
set ignorecase
" backup
set nowb
set nobackup
set noswapfile
" indents
set ai
set si
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
" code
syntax enable
set showmatch
" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'


Plugin 'editorconfig/editorconfig-vim'


call vundle#end()
filetype plugin indent on

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
