#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Commonly used commands:
alias ls='ls --color=auto'
alias l='ls --color=auto'
alias android='/home/mconway/.config/simple-mtpfs'
alias image="nomacs"


PS1='[\u@\h \W]\$ '

# Stop logging of repeated identical commands:
export HISTCONTROL=ignoredups
export HISTSIZE=10000
export HISTFILESIZE=10000
export VISUAL="vim"
export TERM=xterm-256color

# Auto Complete
complete -cf sudo

# Set the variable used by ssh-agent to specify which socket it shall bind to
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"

# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 2>/dev/null ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

# Ensure Python shell knows about the terminal (otherwise backspace doesn't work).
export TERMINFO=/usr/share/terminfo
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
