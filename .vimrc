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

Plugin 'klen/python-mode'

Plugin 'pangloss/vim-javascript'

Plugin 'maksimr/vim-jsbeautify'

Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set number
set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4

" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1

" python-mode
let g:pymode_indent = 1
let g:pymode_python = 'python3'
let g:pymode_virtualenv = 1
let g:pymode_lint = 1

" js-beautify
".vimrc
" map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" syntatstic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_quiet_messages = { 'regex': 'trimming empty' }
let g:syntastic_html_tidy_ignore_errors = [
            \'proprietary attribute "integrity"',
            \'proprietary attribute "crossorigin"',
            \'proprietary attribute "tabindex"',
            \'<form> lacks "action" attribute',
            \'<div> attribute "tabindex" has invalid value "-1"']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']
hi Search ctermfg=grey ctermbg=blue
