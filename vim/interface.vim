" use 256 colours
if has('unix')
    set t_Co=256
endif

" Nice colours
set background=dark
colorscheme molokai
" same for the satusline
let g:airline_theme='molokai'
" improve tab bar
let g:airline#extensions#tabline#enabled = 1
" not everybody has poweline patched fonts.
let g:airline_powerline_fonts = 1
let g:tmuxline_powerline_separators = 1
" always show statusline
set laststatus=2

" display tabs and trailing spaces
set listchars=tab:>-,trail:.,precedes:<,extends:>,eol:$

" leave backgroung as the term sets it
hi Normal guibg=NONE ctermbg=NONE

" show line numbers
set number

" syntastic status
"set statusline+=%#warningmsg#
":set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

