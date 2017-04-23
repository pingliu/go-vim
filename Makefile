help:
	@echo 'Makefile for vim                              '
	@echo '                                              '
	@echo 'Usage:                                        '
	@echo '   make install      init installation        '
	@echo '   make update       update to newest version '

init:
	git clone https://github.com/gmarik/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim

vimupdate:
	vim +PluginInstall! +PluginClean +qall


update: vimupdate 

install: init update

.PHONY: install update
