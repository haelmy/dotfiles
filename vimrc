" setup for vundle
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

filetype plugin indent on     " required!
" end of setup for vundle

" bundles to install via vundle
Bundle 'altercation/vim-colors-solarized'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'csexton/trailertrash.vim'
Bundle 'christoomey/vim-tmux-navigator'

" use solarized theme
syntax enable
set background=dark
colorscheme solarized

" show whitespace characters
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" 4 spaces wide softtab
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
