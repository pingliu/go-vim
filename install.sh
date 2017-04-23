#!/usr/bin/env bash

# backup
echo "Backing up old vim configs"
today=`date +%Y%m%d`
for i in ${HOME}/.vim ${HOME}/.vimrc ${HOME}/.gvimrc; do [ -e $i ] && mv $i $i.$today; done

mkdir ${HOME}/.vim
cp vimrc ${HOME}/.vimrc
cp -r bundle     ${HOME}/.vim/
cp -r colors ${HOME}/.vim/

# install
make install || echo "install error"
echo "Installation complete"
