set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'bling/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set number
set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4
highlight ColorColumn ctermbg=gray
set cc=80

" remap number increment/decrement to prevent conflict with tmux C-a
map <C-a> <Nop>

" vim-airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'
" fixes some alignment problems in powerline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
