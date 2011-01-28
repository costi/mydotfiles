#!/bin/bash

# install these manually:
# exuberant-ctags and vim-ruby (for fuzzy file finder)
# sudo apt-get install -y exuberant-ctags
# sudo apt-get install -y vim-ruby

cp -va * ~
tar -cvf - .* --exclude=\. --exclude=\.\. --exclude=\.git | tar -xf - -C ~/


