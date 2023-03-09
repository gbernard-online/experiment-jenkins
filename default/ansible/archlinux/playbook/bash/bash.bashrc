[[ $- != *i* ]] && return

HISTCONTROL=erasedups:ignoreboth
HISTFILESIZE=50000
HISTSIZE=5000

shopt -s histappend

PS1='\h\$ '

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
