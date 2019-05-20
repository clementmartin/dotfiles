FULL_NAME := $(shell getent passwd $(shell whoami) | cut -d: -f5 | sed -e 's/,//g')
EMAIL_PREFIX := $(shell getent passwd $(shell whoami) | cut -d: -f5 | sed -e 's/,//g; s/ /./g' | tr [A-Z] [a-z])
EMAIL_DOMAIN = onespan.com

.PHONY: create-directories
create-directories:
	@mkdir -p ~/.vim/backups
	@mkdir -p ~/.vim/cache
	@mkdir -p ~/.vim/undo
	@mkdir -p ~/.tmux/plugins

.PHONY: copy-files
copy-files: create-directories
	@rm -rf $(HOME)/.vim/after $(HOME)/.vim/colors $(HOME)/.vim/templates $(HOME)/.vim/*.vim
	@cp vimrc ~/.vimrc
	@cp -r vim/* ~/.vim
	@cp tmux.conf ~/.tmux.conf
	@cp tmux.theme ~/.tmux.theme

.PHONY:	edit-templates
edit-templates: copy-files
	@sed -i -e 's/FULL_NAME/$(FULL_NAME)/; s/EMAIL_PREFIX/$(EMAIL_PREFIX)/; s/EMAIL_DOMAIN/$(EMAIL_DOMAIN)/' ~/.vim/templates/skeleton.sh
	@sed -i -e 's/FULL_NAME/$(FULL_NAME)/; s/EMAIL_PREFIX/$(EMAIL_DOMAIN)/; s/EMAIL_DOMAIN/$(EMAIL_DOMAIN)/' ~/.vim/templates/skeleton.adoc

.PHONY: install
install: copy-files
	@echo "Install vim plugins by running:"
	@echo "    vim -u ~/.vim/plugins.vim -N -c 'PlugInstall'"
	@echo "Install tmux plugin manager if not already done:"
	@echo "    git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm"
	@echo ""
	@echo "Then reload the config and install plugins with <prefix>-I inside tmux"

.PHONY: uninstall
uninstall:
	rm -rf ~/.vim ~/.vimrc  ~/.tmux*
