#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Commonly used commands:
alias ls='ls --color=auto'
alias l='ls --color=auto'

PS1='[\u@\h \W]\$ '

# Stop logging of repeated identical commands:
export HISTCONTROL=ignoredups
export HISTSIZE=10000
export HISTFILESIZE=10000
export VISUAL="vim"
export TERM=xterm-256color


# Auto Complete
complete -cf sudo

# Source the conda environment stuff:
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
