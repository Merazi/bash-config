# ; -*- shell-script -*-

#######
# Bashrc file, by Merazi
###

# check if running interactive
case $- in *i*) ;; *) return;; esac

# history settings
HISTCONTROL=ignoreboth # don't duplicate history
HISTSIZE=1000          # set the history file length
HISTFILESIZE=2000      # set the history file size

# setting some shell options
shopt -s histappend    # append to history
shopt -s checkwinsize  # check window size
shopt -s globstar      # use ** for matching files and dirs
shopt -s autocd        # don't need to use cd to move around
shopt -s dirspell      # autocorrect directory names without cd
shopt -s cdspell       # autocorrect directory names with cd

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# alias definitions
if [ -f ~/.bash-aliases ]; then
    . ~/.bash-aliases
fi

# function definitions
if [ -f ~/.bash-functions ]; then
    . ~/.bash-functions
fi

# my bash prompt, it uses the last command's exit value
# to determine the color of the prompt
__prompt_command() {
    local EXIT="$?"
    PS1='\[\e]0;\u@\h: \w\007\]'

    # color definitions
    local Reset='\[\e[0m\]'
    local Red='\[\e[91m\]'
    local Green='\[\e[92m\]'
    local Cyan='\[\e[96m\]'
    local Blue='\[\e[94m\]'

    PS1+="@${Green}\h${Reset}:${Blue}$(pwd | xargs basename)"

    if [ $EXIT != 0 ]; then
	PS1+="${Red}❯${Reset} "
    else
	PS1+="${Cyan}❯${Reset} "
    fi
}

# finally set the PROMPT_COMMAND
PROMPT_COMMAND=__prompt_command

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# better bash completion
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"

# load cargo environment
. "$HOME/.cargo/env"
