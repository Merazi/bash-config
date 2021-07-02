# ; -*- shell-script -*-

########
# Bashrc file, by Merazi
####

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
. ~/.bash_aliases

# function definitions
. ~/.bash_functions

# environment variables
. ~/.bash_profile

# a simple bash prompt
PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# better bash completion
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"

# greet me
echo "Hello $USER 😁 Welcome to GNU/Bash."
