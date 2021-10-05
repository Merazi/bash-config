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
shopt -s histappend         # just append to history
shopt -s checkwinsize       # check window size
shopt -s globstar           # use ** for matching files and dirs
shopt -s autocd             # don't need to use cd to move around
shopt -s dirspell           # autocorrect directory names without cd
shopt -s cdspell            # autocorrect directory names with cd
shopt -s complete_fullquote # auto quote completions

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# alias definitions
. ~/.bash_aliases

# function definitions
. ~/.bash_functions

# cargo environment
. ~/.cargo/env

# load bash_profile (I have my environment variables there)
. ~/.bash_profile

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# better bash completion
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"

# very simple bash prompt
#PS1='\[\e[94m\]\j:$? \[\e[93m\]\u@\h\[\e[94m\] \w $\[\e[00m\] '
#PS1='\[\e[1;94m\]\j:$? \[\e[0;97m\]\u@\h:\[\e[1;94m\]\W\[\e[00m\]% '
PS1="[\[\e[1;32m\]\u@\h \[\e[1;36m\]<\j:$?> \[\e[1;34m\]\W\[\e[0m\]]: "
#PS1="[\u@\h <\j:$?> \W]: "
#PS1='\u@\h:\w$ '

# show last login
echo "Last login: $(last -1 -R  $USER | head -1 | cut -c 20- | xargs)"
