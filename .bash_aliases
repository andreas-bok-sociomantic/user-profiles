export WORKSPACE=$HOME/workspace
export SPONGEWORKSPACE=$WORKSPACE/sponge
export KRILLTOOLS=$WORKSPACE/krilltools
export DHTNODE_HOME=$HOME/srv/dht
export CMD_SPONGE="$SPONGEWORKSPACE/bin/sponge -S $SPONGEWORKSPACE/bin/etc/dhtmemory.xml"
export CMD_DHTNODE="$DHTNODE_HOME/dhtnode -c $HOME/srv/mem1/etc/config.ini"


## Productivity

alias ..="cd .."

## Project aliases
# generate aliases based on repos in workspace folder

cd $HOME/workspace
for repo in $(ls); 
do
  if ( [ -d $repo ] && [ -e $repo/.git ] ) 
    then            
      alias cd$repo="cd $HOME/workspace/$repo"
  fi  
done;
cd $HOME

## Make aliases
# reset changes induced by d1tod2fix script 
# or `make clean
alias d2tod1-reset="git submodule foreach git checkout .;git checkout .;rm -rf build/last/tmp/d2conv"
alias fulld2make='make all test DVER=2'
alias fastd2make='make fasttest DVER=2'


## Git aliases

alias gs='git status '
alias gssub='git submodule status'
alias gbl='git branch --list '
alias gc='git commit -m '
alias gdt='git diff '
alias gdt='git difftool '
alias cola='git-cola '
alias gk='gitk '
alias gl='git log '
alias gl1='git log --oneline'
alias glshort='git log --pretty=oneline --shortstat --numstat --color=always --graph'
#alias gbrtoorg='__git_ps1 | grep -P -o -e   '[\w\d-_]+' | xargs git push origin '
alias ghubls='git hub pull list'

# XClip
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# Docker
export DOCKER_CMD="sudo docker"
alias dokrm="$DOCKER_CMD rm "
alias dokps="$DOCKER_CMD ps -a "
alias dokmysql="$DOCKER_CMD run -e MYSQL_ROOT_PASSWORD='' -d mysql:5.6 --name "

# terminal markdown viewer

alias mdv='/opt/terminal_markdown_viewer-master/mdv.py'


