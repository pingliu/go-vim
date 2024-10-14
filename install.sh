#!/usr/bin/env bash

# change .bashrc
echo 'export PATH=$PATH:/usr/local/go/bin:/root/go/bin' >> ~/.bashrc
echo "export TERM='xterm-256color'" >> ~/.bashrc 
echo 'export LANG=en_US.utf8' >> ~/.bashrc
echo 'export LC_CTYPE=en_US.utf8'  >> ~/.bashrc
echo "TZ='Asia/Shanghai'; export TZ" >> ~/.bashrc
echo "stty stop ''" >> ~/.bashrc
echo "stty start ''" >> ~/.bashrc
echo 'stty -ixon' >> ~/.bashrc
echo 'stty -ixoff' >> ~/.bashrc
echo 'PS1="[\[\e[32m\]#\##\[\e[31m\]\u@\[\e[36m\]\h \W]\$\[\e[m\]"' >> ~/.bashrc
echo "alias ls='ls -al --color=always'" >> ~/.bashrc
echo "alias gome='cd /root/go'" >> ~/.bashrc
echo "alias w='cd ~/workdir/'" >> ~/.bashrc

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
