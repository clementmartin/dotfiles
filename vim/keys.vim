" unite.vim mappings
" browse buffers
nnoremap <leader>ob :<C-u>Denite -buffer-name=buffer buffer<cr>
" browse files in this directory
nnoremap <leader>oF :<C-u>Denite -buffer-name=files  file<cr>
" browse files recursively
nnoremap <leader>or :<C-u>Denite -buffer-name=files  file_rec<cr>
" file explorer mode
nnoremap <Leader>oe :Explore<CR>
" NERDTree file manager
nnoremap <Leader>of :<C-u>NERDTreeToggle<CR>

" Edit local config
nnoremap <leader>ve :vsplit ~/.vimrc.local<cr>
" apply saved config, including any modifications in ~/.vimrc/local
nnoremap <leader>vs :source $MYVIMRC<cr>

" fugitive mappings
nnoremap <leader>gs :Gstatus<CR>
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
