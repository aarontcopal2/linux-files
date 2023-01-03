# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


# User specific aliases and functions
# color for terminal
# export PS1="\n\[\e[01;33m\]\u@\[\e[0m\]\[\e[01;36m\]\h\[\e[0m\]\[\e[00;37m\] \[\e[00;35m\]\t \[\e[0m\]\[\e[01;35m\]\w\[\e[0m\]\[\e[01;37m\] \[\e[0m\]\n$ "
export PS1="\n\[\e[01;33m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[01;36m\]\h\[\e[0m\]\[\e[00;37m\] \t \[\e[0m\]\[\e[01;35m\]\w\[\e[0m\]\[\e[01;37m\] \[\e[0m\]\n$ "

# encoding (for avoiding weird characters in terminal)
export LANG="$LC_ALL"

stty -ixon # to enable forward searches in terminal
alias ls='ls --color=auto'
alias grep="grep --color=always"
bind '"\C-p": shell-kill-word' # to enable forward word delete
