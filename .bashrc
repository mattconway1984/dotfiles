#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Commonly used commands:
alias ls='ls --color=auto'
alias l='ls --color=auto'

alias pt='python -m pytest '

alias gdi='git difftool '
alias gme='git merge '
alias gco='git checkout '
alias gbr='git branch '
alias gcm='git commit '
alias grb='git rebase '

alias dev='cd ~/dev'
alias ninoxcc='cd ~/dev/ninoxcc'
alias pynox='cd ~/dev/pynox'
alias sysctrl='cd ~/dev/sysctrl'
alias pyowlstone='cd ~/dev/pyowlstone'
alias owlhal='cd ~/dev/owl-hal'
alias sysagg='cd ~/dev/system-aggregator'
alias avcadlib='cd ~/dev/avcadlib'
alias defencelib='cd ~/dev/defencelib'


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
