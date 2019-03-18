FULL_NAME := $(shell getent passwd $(shell whoami) | cut -d: -f5 | sed -e 's/,//g')
EMAIL_PREFIX := $(shell getent passwd $(shell whoami) | cut -d: -f5 | sed -e 's/,//g; s/ /./g' | tr [A-Z] [a-z])
EMAIL_DOMAIN = onespan.com

.PHONY: create-directories
create-directories:
	@mkdir -p ~/.vim/backups,cache,undo
	@mkdir -p ~/.vim/cache,undo
	@mkdir -p ~/.vim/undo

.PHONY: copy-files
copy-files: create-directories
	@cp vimrc ~/.vimrc
	@cp -r vim/* ~/.vim

.PHONY:	edit-templates
edit-templates: copy-files
	@sed -i -e 's/FULL_NAME/$(FULL_NAME)/; s/EMAIL_PREFIX/$(EMAIL_PREFIX)/; s/EMAIL_DOMAIN/$(EMAIL_DOMAIN)/' ~/.vim/templates/skeleton.sh
	@sed -i -e 's/FULL_NAME/$(FULL_NAME)/; s/EMAIL_PREFIX/$(EMAIL_DOMAIN)/; s/EMAIL_DOMAIN/$(EMAIL_DOMAIN)/' ~/.vim/templates/skeleton.adoc

.PHONY: install
install: copy-files
	@echo "Install vim plugins by running:"
	@echo "    vim -u ~/.vim/plugins.vim -N -c 'PlugInstall'"

.PHONY: uninstall
uninstall:
	rm -rf ~/.vim ~/.vimrc
