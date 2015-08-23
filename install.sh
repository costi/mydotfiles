#!/bin/bash

# install these manually:
# exuberant-ctags and vim-ruby (for fuzzy file finder)
sudo apt-get install -y exuberant-ctags
#sudo apt-get install -y vim-ruby # vim-ruby is provided by either vim-gtk or vim-gnome
sudo apt-get install -y vim-gtk

git submodule init
git submodule update # to fetch liquidprompt


ME=`readlink -f $0`
SETUP_DIR=$(dirname $ME)

files=( .ackrc .bashrc .irbrc .bash_aliases .screenrc .vimrc .vim .profile bin/make-tags-file .gitconfig .tmux.conf liquidprompt)
mkdir ~/bin
rm ~/.vim
for file in "${files[@]}"
do
  # rm -vr ~/${file}
  ln -v -s -f ${SETUP_DIR}/${file} ~/${file}
done
