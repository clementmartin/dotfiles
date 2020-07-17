" F keys mappings
noremap <F1> <esc>:NERDTreeToggle<CR>
inoremap <F2> <esc>:set paste!<cr>i
nnoremap <F2> :set paste!<cr>
inoremap <F3> <esc>:set number!<cr>:GitGutterToggle<cr>:ALEToggleBuffer<cr>i
nnoremap <F3> :set number!<cr>:GitGutterToggle<cr>:ALEToggleBuffer<cr>
inoremap <F4> <esc>:%!python -m json.tool<cr>:setfiletype json<cr>i
nnoremap <F4> :%!python -m json.tool<cr>:setfiletype json<cr>
inoremap <F8> <esc>:%!base64 -d<cr>i
nnoremap <F8> :%!base64 -d<cr>
inoremap <F9> <esc>:%!base64<cr>:%s/\n//<cr>i
nnoremap <F9> :%!base64<cr>:%s/\n//<cr>^y$
noremap <F12> :TagbarToggle<CR>


" go to next buffer
nnoremap <leader>n :bn<cr>
"go to previous buffer
nnoremap <leader>b :bp<cr>
" denite.vim mappings
" browse buffers
nnoremap <leader>ob :<C-u>Denite -buffer-name=buffer buffer<cr>
" browse files in this directory
nnoremap <leader>oF :<C-u>Denite -buffer-name=files  file<cr>
" browse files recursively
nnoremap <leader>or :<C-u>Denite -buffer-name=files  file/rec<cr>
" file explorer mode
nnoremap <Leader>oe :Explore<CR>
" NERDTree file manager
nnoremap <Leader>of :<C-u>NERDTreeToggle<CR>

" Edit local config
nnoremap <leader>ve :vsplit ~/.vimrc.local<cr>
" apply saved config, including any modifications in ~/.vimrc.local
nnoremap <leader>vs :source $MYVIMRC<cr>
" source current file
nnoremap <leader>vl :source %<cr>

" fugitive mappings
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gP :Gpull<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ga :Gadd<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gC :Gcommit %<CR>
" grepper mapping
nnoremap <leader>gr :Grepper<CR>

nnoremap <leader>mm :Neomake<CR>
nnoremap <leader>m! :Neomake!<CR>
