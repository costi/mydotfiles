#!/bin/bash

# install these manually:
# exuberant-ctags and vim-ruby (for fuzzy file finder)
# sudo apt-get install -y exuberant-ctags
# sudo apt-get install -y vim-ruby

ME=`readlink -f $0`
SETUP_DIR=$(dirname $ME)
ORIGINAL_DIR=`pwd`

cd $SETUP_DIR
cp -va * ~
tar -cf - .* --exclude=\. --exclude=\.\. --exclude=\.git | tar -xvf - -C ~/
cd $ORIGINAL_DIR

