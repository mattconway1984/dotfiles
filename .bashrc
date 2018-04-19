#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export VISUAL="vim"

# Stop logging of repeated identical commands:
export HISTCONTROL=ignoredups
export HISTSIZE=10000
export HISTFILESIZE=10000
