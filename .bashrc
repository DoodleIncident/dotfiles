TERM=xterm-256color
set -o vi

# Store ALL the things!
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.bash_eternal_history

# This looks
shopt -s histappend
shopt -s cmdhist
# I can tell by the pixels

export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export HISTCONTROL=ignoreboth
export HISTIGNORE="&:fg:tmux:history*"
