#!/bin/bash

# install these manually:
# exuberant-ctags and vim-ruby (for fuzzy file finder)
# sudo apt-get install -y exuberant-ctags
# sudo apt-get install -y vim-ruby

ME=`readlink -f $0`
SETUP_DIR=$(dirname $ME)

files=( .ackrc .bashrc .irbrc .bash_aliases .screenrc .vimrc .vim )
for file in "${files[@]}"
do
	ln -v -s ${SETUP_DIR}/${file} ~/${file}
done
