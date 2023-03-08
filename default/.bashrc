[[ $- != *i* ]] && return

alias exa='exa --git --long'
alias fgrep='grep --fixed'
alias julia='julia --color=yes'
alias less='less --RAW-CONTROL-CHARS'
alias node='node --unhandled-rejections=strict'
alias rg='rg --hidden'
alias tree='tree -C'
alias xclip='xclip -selection clipboard'

case "$TERM" in
  linux) PS1='\[\e[1;37m\]\u@\h\[\e[m\]:\[\e[1;33m\][\w]\[\e[m\]\n\[\e[1;31m\]\$\[\e[m\] ' ;;
  screen.linux) PS1='\[\e[1;36m\]\u@\h:[\w]\[\e[m\]\n\[\e[1;36m\]\$\[\e[m\] ' ;;
  screen.*|tmux-*) PS1='\[\e]0;\u@\h:[\w]\a\]\[\e[1;36m\]\u@\h:[\w]\[\e[m\]\n\[\e[1;36m\]\$\[\e[m\] ' ;;
  *) PS1='\[\e]0;\u@\h:[\w]\a\]\[\e[1;37m\]\u@\h\[\e[m\]:\[\e[1;33m\][\w]\[\e[m\]\n\[\e[1;31m\]\$\[\e[m\] '
esac

eval "$(pyenv init -)"

[ "$TERM_PROGRAM" == vscode ] && [ -f "$PWD/.env" ] && eval $(dotenv list --format=export)
