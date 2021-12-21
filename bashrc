#!/usr/bin/env bash

# merazi's bashrc #

# - some quality of life tweaks - #

shopt -s autocd cdspell checkjobs checkwinsize dirspell   \
      dirspell globstar gnu_errfmt histappend histverify \
      inherit_errexit expand_aliases

bind 'set completion-ignore-case on' \
     'set completion-map-case on'    \
     'set show-all-if-ambiguous on'  \
     'set blink-matching-paren on'

# - use bash-completion, if available - #

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# - loading additional files - #

. ~/.cargo/env
. ~/.aliases

# - bash prompt - #

function proml {

    # - declare some colors - #
    local LIGHT_YELLOW="\[\033[1;33m\]"
    local        GREEN="\[\033[0;32m\]"
    local  LIGHT_GREEN="\[\033[1;32m\]"
    local        WHITE="\[\033[1;37m\]"
    local        RESET="\[\033[00m\]"
    local   LIGHT_BLUE="\[\033[1;34m\]"

    # - terminal title - #
    case $TERM in
	xterm*)
	    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
	    ;;
	*)
	    TITLEBAR=""
	    ;;
    esac

    PS1="$TITLEBAR$LIGHT_YELLOW@$LIGHT_GREEN\h.\u:$LIGHT_BLUE\w$WHITE\$$RESET "
    PS2='> '
    PS4='+ '
}
proml
