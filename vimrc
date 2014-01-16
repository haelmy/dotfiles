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
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'kien/ctrlp.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'
Bundle 'scrooloose/syntastic'
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'Valloric/YouCompleteMe'

" use solarized theme
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
let g:Powerline_symbols = 'fancy'
syntax on
set background=dark
colorscheme solarized

" show vim-ariline when not in split view
set laststatus=2

" show whitespace characters
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" 4 spaces wide softtab
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" automatically handle indentation
set autoindent
set smartindent

" line numbers
set number
"
" highlight the cursorline
set cursorline

" make omnicomplete autocompletion work as expected
" http://vim.wikia.com/wiki/VimTip1386
"set completeopt=longest,menuone
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"inoremap <C-@> <C-x><C-o>
