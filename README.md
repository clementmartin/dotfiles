# vim config

This repo contains my current vim config for onespan.
It needs at least vim 8.0

Install config by running `make install`

WARNING: This will delete any most of `~/.vim`

Plugins are managed via https://github.com/junegunn/vim-plug


Then on first run, Install them with the following command:

```
vim -N -u ~/.vim/plugins.vim -c 'PlugInstall'
```

WARNING: This distribution includes vim-devicons, so you will need a patched font ( http://nerdfonts.com )
