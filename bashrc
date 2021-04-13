# ; -*- shell-script -*-

#######
# Bashrc file, by Merazi
###

case $- in *i*) ;; *) return;; esac # check if running interactive

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

# my small collection of bash prompts
#PS1+='\n\[\e[0;32m\]\u\[\e[m\]@\[\e[0;33m\]\h\[\e[m\] \w\n\$ ' # cygwin clone
#PS1+='\n\u → \[\033[00;32m\]\h\[\033[01;34m\] \W\n\$\[\033[00m\] ' # blue multi
#PS1+='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ ' # bright red
#PS1+='\[\033[00;33m\]\u\[\033[00m\]@\[\033[00;32m\]\h:\[\033[01;34m\]\w\[\033[00m\]\$ ' # default prompt but with nice colors
#PS1+='\u@\h:\w\$ ' # default monochrome
#PS1+='\[\e[3;32m\]\u\[\e[0;00m\]:\[\e[1;33m\]\w\[\e[0;00m\]\$ ' # golden directory
#PS1+='\[\e[0;34m\]\u \[\033[00m\]in \[\e[0;33m\]\h \[\e[0;31m\]\w \[\e[0;33m\]>\[\e[0;34m\]>\[\e[0;31m\]>\[\033[00m\] ' # Alexis' prompt
#PS1+="\[\033[1;36m\][\u@\[\033[1;37m\]\h:\[\033[1;33m\]\w]\\$\[\033[0m\] " # fedora colorized
PS1+='\n┌──[ \[\033[1;36m\]\u@\h\e[0m ]─[ \[\033[1;34m\]\w\[\033[0m\] ]\n└─╼ $ ' # another multiline prompt
#PS1+='\n\[\e[32;1m\](\[\e[37;1m\]\u\[\e[32;1m\])-(\[\e[37;1m\]jobs:\j\[\e[32;1m\])-(\[\e[37;1m\]\w\[\e[32;1m\])\n(\[\[\e[37;1m\]! \!\[\e[32;1m\])-> \[\e[0m\]' # green pills
#PS1+='\n\[\e[30;1m\]\[\016\]\[\017\](\[\e[31;1m\]\u@\h\[\e[30;1m\])-(\[\e[31;1m\]Jobs: \j\[\e[30;1m\])-(\[\e[31;1m\]\@ \d\[\e[30;1m\])->\[\e[30;1m\]\n\[\016\]\[\017\](\[\[\e[32;1m\]\w\[\e[30;1m\])-(\[\e[32;1m\]$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed "s: ::g") files, $(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed "s/total //")b\[\e[30;1m\])-> \[\e[0m\]' # directory info
#PS1+='\n\[\e[1;32m\]\u@\H:\[\e[m\] \[\e[1;37m\]\w\[\e[m\]\n\[\e[1;33m\]hist:\! \[\e[0;33m\]\[\e[1;31m\]jobs:\j \$\[\e[m\] ' # history count
#PS1+='\n[\[\033[32m\]\w\[\033[0m\]]\[\033[1;33m\]\nJobs: \j, User: \u\[\033[0m\]\$ ' # directory spacious
#PS1+='\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ ' # cold colors


# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# bash completion
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
    fi
fi

# better bash completion
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"
