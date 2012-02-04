alias g='grep -i'  #case insensitive grep
alias f='find . -iname'
alias ducks='du -cks * | sort -rn|head -11' # Lists the size of all the folders and files
alias ll='ls -hl'
alias ..="cd .."
alias ...="cd ../.."
alias cs="cd /export/comp/stable"
alias ew="cd /export/web"
alias ukslave="psql -h slavedb.quickquid.co.uk -U cgavrilescu cnuapp_prod_uk"
alias usslave="psql -h slavedb3.cashnetusa.com -U cgavrilescu cnuapp_prod"
alias jvslave="psql -h slavedbjv.cashnetusa.com -U cgavrilescu cnuapp_prod_jv"
alias auslave="psql -h slavedb.dollarsdirect.com.au -U cgavrilescu cnuapp_prod_au"
alias uksnapshot="psql -h qassdb-06-nut.cashnetusa.com -U postgres cnuapp_prod_uk"
export RB_INDEX_FILE=~/rb_files_cache
alias rehash_index="find /export/cnuapp -type f | grep -v rb_files | egrep -i '(rhtml|rake|spec|rb|yml|tpl|txt)' > $RB_INDEX_FILE"
alias greprl="xargs < $RB_INDEX_FILE egrep -l 2> /dev/null "
alias grepr="xargs < $RB_INDEX_FILE egrep 2> /dev/null "
alias ff="cat $RB_INDEX_FILE | grep -i"
alias p4unadded='find . -type f | grep -v class$ | p4 -x - have > /dev/null' 

alias spec='spec --color --format specdoc'
alias rebuild_uk='PGUSER=postgres dropdb cnuapp_dev_gb && createdb --template template_cnuapp_dev_gb cnuapp_dev_gb '
