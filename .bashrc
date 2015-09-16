export BASH_CONF="bashrc"
export DEVBOX="quietbetween.corp.yahoo.com"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

PS1="[$GREEN\u@\h$NO_COLOR: \W ]$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

echo "bashrc";
