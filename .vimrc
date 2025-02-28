set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set number
set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4
set cc=120
set textwidth=120
set laststatus=2

highlight ColorColumn ctermbg=gray

" Mouse settings
set ttymouse=sgr
set mouse=a

" remap number increment/decrement to prevent conflict with tmux C-a
map <C-a> <Nop>
