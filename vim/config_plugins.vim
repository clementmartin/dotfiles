" vim-ansible config
let g:ansible_unindent_after_newline = 1
let g:ansible_extra_keywords_highlight = 1
let g:ansible_with_keywords_highlight = 'Constant'

" startify config
let g:startify_session_dir = '~/.vim_data/sessions'
let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

let g:startify_session_persistence = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_enable_special = 0
let g:startify_session_sort = 1
let g:startify_custom_header = 'startify#fortune#boxed()'
let g:startify_skiplist = [
       \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc',
       \ '^/tmp',
       \ '\.git/.*',
       \ ]

" close NERDTree when opening a file
let NERDTreeQuitOnOpen = 1

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_asciidoc_asciidoc_exec = "asciidoctor"


" jedi-vim
let g:jedi#use_splits_not_buffers = "right"
