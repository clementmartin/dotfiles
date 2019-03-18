FULL_NAME := $(shell getent passwd $(shell whoami) | cut -d: -f5 | sed -e 's/,//g')
EMAIL_PREFIX := $(shell getent passwd $(shell whoami) | cut -d: -f5 | sed -e 's/,//g; s/ /./g' | tr [A-Z] [a-z])
EMAIL_DOMAIN = onespan.com


.PHONY:	edit-templates
edit-templates:
	sed -i -e 's/FULL_NAME/$(FULL_NAME)/; s/EMAIL_PREFIX/$(EMAIL_PREFIX)/; s/EMAIL_DOMAIN/$(EMAIL_DOMAIN)/' ~/.vim/templates/skeleton.sh
	sed -i -e 's/FULL_NAME/$(FULL_NAME)/; s/EMAIL_PREFIX/$(EMAIL_DOMAIN)/; s/EMAIL_DOMAIN/$(EMAIL_DOMAIN)/' ~/.vim/templates/skeleton.adoc

.PHONY: copy-files
copy-files:
	mkdir -p ~/.vim
	cp vimrc ~/.vimrc
	cp -r vim/* ~/.vim

.PHONY: install
install: copy-files edit-templates
	@echo "Install vim plugins by running:"
	@echo "    vim -u ~/.vim/plugins.vim -N -c 'PlugInstall"
