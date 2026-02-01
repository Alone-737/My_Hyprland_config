#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
fastfetch

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# Permanent green prompt
PS1='\[\e[32m\]\u@\h:\w\$ \[\e[0m\]'


export CLICOLOR=1
export LS_COLORS='di=32:fi=32:ln=32:ex=32'
export GREP_COLORS='mt=32'


if [ -x /usr/bin/setterm ]; then
    setterm -foreground green -background black -store
fi
