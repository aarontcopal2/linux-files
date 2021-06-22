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

# levelzero
module use /soft/modulefiles
# unload both for dyninst and hpctoolkit builds
# module load public_intel_level_zero
# module load spack gdb
# uncomment for dyninst and hpctoolkit builds
module load gcc/9.2.0

# SPACK
export SPACK_ROOT=$HOME/software/spack
export PATH=$SPACK_ROOT/bin:$PATH
source $SPACK_ROOT/share/spack/setup-env.sh

# hpctoolkit
module use /home/aarontcopal2/modules
module load hpctoolkit

stty -ixon # to enable forward searches in terminal
alias ls='ls --color=auto'
alias grep="grep --color=always"
bind '"\C-p": shell-kill-word' # to enable forward word delete

# for Ack
export PATH=$PATH:/home/aarontcopal2/software/Ack

# for ctags, cscope
export PATH=/home/aarontcopal2/software/ctags-5.8/install/bin:/home/aarontcopal2/software/cscope-15.9/install/bin:$PATH

# for heaptrack
export PATH=/home/aarontcopal2/software/heaptrack/install/bin:$PATH

# for valgrind
export PATH=/home/aarontcopal2/software/valgrind-3.17.0/install/bin:$PATH
