set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set number
set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4
set cc=80
set laststatus=2

highlight ColorColumn ctermbg=gray

" Mouse settings
set ttymouse=xterm2
set mouse=a

" remap number increment/decrement to prevent conflict with tmux C-a
map <C-a> <Nop>

" Vim color scheme
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" vim-airline
let g:airline_powerline_fonts=1
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'

" fixes some alignment problems in powerline/vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" To get the color scheme to work you must>
" 1. Get the solorized distribution at https://ethanschoonover.com/solarized/
" 2. Install the OSX terminal for the dark solarized version. 
" 3. Install the solarized.vim vim colorscheme to ~/.vim/colors/
