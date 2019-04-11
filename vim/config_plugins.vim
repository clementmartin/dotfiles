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

" vimwiki settings
let g:vimwiki_auto_chdir = 1

let wiki = {}
let wiki.path = '~/docs/notes/'
let wiki.path_html = '~/docs/pub/notes'
let wiki.autoexport = 1
let wiki.auto_toc = 1
let wiki.maxhi = 1
let g:vimwiki_list = [wiki]

" tagbar
let g:tagbar_type_ansible = {
  \ 'ctagstype' : 'ansible',
  \ 'kinds' : [
    \ 't:tasks'
  \ ],
  \ 'sort' : 0
  \ }

let g:tagbar_type_asciidoc = {
    \ 'ctagstype' : 'asciidoc',
    \ 'kinds' : [
        \ 'h:table of contents',
        \ 'a:anchors:1',
        \ 't:titles:1',
        \ 'n:includes:1',
        \ 'i:images:1',
        \ 'I:inline images:1'
    \ ],
    \ 'sort' : 0
   \ }

let g:ft_man_open_mode = 'vert'
set keywordprg=:Man
