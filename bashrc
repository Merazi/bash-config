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
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# function definitions
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# this is for xterm to display a fancy title
# if you remove it, you may also want to remove
# the + symbols from the prompts below
PS1="\[\033]0;\u@\h: \w\007\]"

# my simple bash prompt
PS1+='\[\e[94m\]\w\[\e[00m\]:\$ '

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# The 'bash-completion' package.
if [ -f /run/current-system/profile/etc/profile.d/bash_completion.sh ]
then
  # Bash-completion sources ~/.bash_completion.  It installs a dynamic
  # completion loader that searches its own completion files as well
  # as those in ~/.guix-profile and /run/current-system/profile.
  source /run/current-system/profile/etc/profile.d/bash_completion.sh
fi


# better bash completion
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"
