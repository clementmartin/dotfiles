" Function to source only if file exists
function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction

call SourceIfExists("~/.vim/functions.vim")
call SourceIfExists("~/.vim/config_core.vim")
call SourceIfExists("~/.vim/plugins.vim")
call SourceIfExists("~/.vim/interface.vim")
call SourceIfExists("~/.vim/config_plugins.vim")
"call SourceIfExists("~/.vim/commands.vim")
call SourceIfExists("~/.vim/keys.vim")
call SourceIfExists("~/.vim/custom_ftypes.vim")
call SourceIfExists("~/.vim/abbreviations.vim")
call SourceIfExists("~/.vim/disable_match_paren.vim")
call SourceIfExists("~/.vimrc.local")
