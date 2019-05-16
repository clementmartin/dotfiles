# vim and tmux config

This repo contains my current vim and tmux config for onespan.
It needs at least vim 8.0

Install the config by running `make install`

WARNING: This will overwrite `~/.vimrc`, `~/.tmux.conf` and most of `~/.vim` so you surely want to take backups before.

Plugins are managed via https://github.com/junegunn/vim-plug so you need to setup it first.


Then on first run, Install them with the following command:

```
vim -N -u ~/.vim/plugins.vim -c 'PlugInstall'
```

WARNING: This distribution includes vim-devicons, so you will need a patched font from http://nerdfonts.com

For tmux, you need tmux plugin manager follow the instruction at https://github.com/tmux-plugins/tpm 

