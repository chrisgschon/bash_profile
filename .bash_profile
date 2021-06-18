###UNIX
alias mypath='echo $PATH'
alias myhome='echo $HOME'
alias mypythonpath='echo $PYTHONPATH'
alias weather='curl -s "wttr.in/$1?m1"'
alias sb='source ~/.bash_profile'
alias sshgen='ssh-keygen -t rsa'
alias sshadd='ssh-add -K ~/.ssh/id_rsa_adsp'
alias cddesk='cd ~/Desktop'
alias shfunctemplate='echo "function f(){ dosomething \$posarg ; };_f"'
alias xcodeinstall='xcode-select --install'
alias mostrecentfiles="find . -type f -print0 | xargs -0 ls -tl | head -n 10"
alias nummodded='find . -maxdepth 1 -mtime -7 | wc -l'
alias mostrecentmodded='ls -Artls | tail -n 1'

###PYTHON
alias pyramble='echo "import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
%matplotlib inline
import seaborn as sns"'

###GIT
alias gitgraph='git log --graph --all --decorate --oneline'
alias githist='git log --pretty=format:"%ad:%an:%d:%B" --date=short --reverse --all --since=1.months.ago'
alias gitprunelist='git remote prune origin --dry-run'
alias gitprune='git remote prune origin'
alias gitcommitinfo='git cat-file -p HEAD'
alias gitdelb='function _gitdelb(){ git branch -d $1; };_gitdelb'
alias gitdelrb='function _gitdelrb(){ git push origin --delete $1; };_gitdelrb'
alias gitmergedev='git merge dev --no-commit'

###JUPYTER
alias jn='jupyter notebook'
alias jl='jupyter lab'
alias ipyinstall='python -m ipykernel install --name'
alias jdisplays='echo "pd.set_option('display.max_rows', None)
pd.set_option('display.max_columns', None)
pd.set_option('display.width', None)
pd.set_option('display.max_colwidth', -1)"'

###DOCKER
alias dps='docker ps'
alias dce='docker-compose exec'
alias dc='docker-compose'
alias dcb='docker-compose build'
alias dcupd='docker-compose up -d'
alias dcbupd='docker-compose build; docker-compose up -d'
alias dbash='function _dbash(){ docker exec -it $1 bash; };_dbash'
alias dcbash='function _dcbash(){ docker-compose exec $1 bash; };_dcbash'
alias dstopall='docker stop $(docker ps -a -q)'
alias drmall='docker rm $(docker ps -a -q)'
alias djn="jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --port 8899"
alias djl="jupyter lab --ip 0.0.0.0 --no-browser --allow-root --port 8899"
alias djlist="docker-compose exec app jupyter notebook list"
##running container's ip address
alias dip="function _dip(){ docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $1};_dip"
alias dlogs='function _dlogs(){ docker logs $1; };_dlogs'
alias dlivelogs='function _dlivelogs(){ docker logs -f $1; };_dlivelogs'
alias dcbtupd='docker-compose -f docker-compose.yml -f docker-compose.override.yml -f docker-compose.tests.yml up -d --build'
alias dcbdupd='docker-compose -f docker-compose.yml -f docker-compose.override.yml up -d --build'
alias drefreshvols='docker-compose up -d && docker-compose down && docker volume list'
alias drmairflowvols='drefreshvols && docker volume rm airflow_mssql && docker volume rm airflow_sqlserver'
alias dprune='docker system prune'

###NETWORKING
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias router='netstat -nr | grep default'
curltime() {
    curl -so /dev/null -w "\
   namelookup:  %{time_namelookup}s\n\
      connect:  %{time_connect}s\n\
   appconnect:  %{time_appconnect}s\n\
  pretransfer:  %{time_pretransfer}s\n\
     redirect:  %{time_redirect}s\n\
starttransfer:  %{time_starttransfer}s\n\
-------------------------\n\
        total:  %{time_total}s\n" "$@"
}






