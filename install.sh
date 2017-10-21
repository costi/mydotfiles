#!/bin/bash

# install these manually:
sudo apt-get install -y exuberant-ctags
sudo apt-get install -y vim-gtk
sudo apt-get install -y silversearcher-ag

git submodule init
git submodule update # to fetch liquidprompt


ME=`readlink -f $0`
SETUP_DIR=$(dirname $ME)

files=( .ackrc .bashrc .irbrc .bash_aliases .screenrc .vimrc .vim .profile bin/make-tags-file .gitconfig .tmux.conf liquidprompt)
mkdir ~/bin
#rm ~/.vim
for file in "${files[@]}"
do
  rm -vr ~/${file}
  ln -v -s -f ${SETUP_DIR}/${file} ~/${file}
done
