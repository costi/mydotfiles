alias g='grep -i'  #case insensitive grep
alias f='find . -iname'
alias ducks='du -cks * | sort -rn|head -11' # Lists the size of all the folders and files
alias ll='ls -hl'
alias ..="cd .."
alias ...="cd ../.."

alias spec='spec --color --format specdoc'
alias be='bundle exec'
alias aws='docker run --rm -it -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'
