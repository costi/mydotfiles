alias g='grep -i'  #case insensitive grep
alias f='find . -iname'
alias ducks='du -cks * | sort -rn|head -11' # Lists the size of all the folders and files
alias ll='ls -hl'
alias ..="cd .."
alias ...="cd ../.."
alias cs="cd /export/comp/stable"
alias ew="cd /export/web"
alias ukslave="PGSSLMODE=require psql -h slavedb.quickquid.co.uk -U cgavrilescu cnuapp_prod_uk"
alias usslave="PGSSLMODE=require psql -h slavedb3.cashnetusa.com -U cgavrilescu cnuapp_prod"
alias jvslave="PGSSLMODE=require psql -h slavedbjv.cashnetusa.com -U cgavrilescu cnuapp_prod_jv"
alias auslave="PGSSLMODE=require psql -h slavedb.dollarsdirect.com.au -U cgavrilescu cnuapp_prod_au"
alias uksnapshot="psql -h qassdb-06-nut.cashnetusa.com -U postgres cnuapp_prod_uk"
export RB_INDEX_FILE=~/rb_files_cache
alias rehash_index="find /export/cnuapp -type f | grep -v rb_files | egrep -i '(rhtml|rake|spec|rb|yml|tpl|txt)' > $RB_INDEX_FILE"
alias greprl="xargs < $RB_INDEX_FILE egrep -l 2> /dev/null "
alias grepr="xargs < $RB_INDEX_FILE egrep 2> /dev/null "
alias ff="cat $RB_INDEX_FILE | grep -i"

alias cnuspec='cnuapp/bin/cnu_env spec --color --format specdoc'
alias cnurspec='cnuapp/bin/cnu_env rspec --color'
alias rspecx='cnuapp/bin/cnu_env rspec -X --color'
alias specx='cnuapp/bin/cnu_env spec -X --color --format specdoc'
alias suite_respork='pushd /export/cnuapp/cnuapp; rake spork:suite:stop; rake spork:suite:start; popd'
alias unit_respork='pushd /export/cnuapp/cnuapp; rake spork:unit:stop; rake spork:unit:start; popd'
alias refreshdb='dropdb cnuapp_dev_gb && createdb --template template_cnuapp_dev_gb cnuapp_dev_gb '
alias rebuilddb='pushd /export/cnuapp/cnuapp && ver=9.1 PGPORT=5434 rake db:rebuild name=cnuapp_dev_gb cl=GB force=true && popd'

alias envus='ln -f -s /etc/cnu/cnu_env.US /etc/cnu/cnu_env'
alias envgb='ln -f -s /etc/cnu/cnu_env.GB /etc/cnu/cnu_env'
