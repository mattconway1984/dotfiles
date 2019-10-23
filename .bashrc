#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Setup ls alisas (supports silly typos when trying to run ls command) 
alias ls='ls --color=auto'
alias l='ls --color=auto'
alias sl='ls --color=auto'

# Run script to mount my android phone:
alias android='/home/mconway/.config/simple-mtpfs'

# TARTS alias
alias tarts="/home/mconway/.scripts/tarts"

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

# Set the variable used by ssh-agent to specify which socket it shall bind to
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
