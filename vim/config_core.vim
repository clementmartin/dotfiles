" don't bother being fully compatible with the old vi
set nocompatible
" per file type indentation
filetype plugin indent on

" Syntax highlighting
syntax on

" remap space as leader key as soon as possible
let mapleader = " "

" allow per file settings if a modeline is found
set modeline

" encoding
set encoding=UTF-8

" keep more stuff in history
set history=1000

" list completions
set wildmenu
set wildmode=list:longest

" set backup / swap dir
set backupdir=~/.vim/backups//
set directory=~/.vim/cache//
" activate and set undo files location
set udf
set udir=~/.vim/undo//

if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
    autocmd BufNewFile *.adoc 0r ~/.vim/templates/skeleton.adoc
  augroup END
endif

" search options
set ignorecase
set smartcase
" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.
" Intuitive backspacing in insert mode
set backspace=indent,eol,start
