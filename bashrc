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

# - bash prompts - #

PS1='\[\033]0;\u@\h:\w\007\]' # terminal title
PS1+='\n\[\033[1;33m\]$? \[\033[7;32m\]\u@\h\[\e[00m\]:\[\033[1;34m\]\w\n\[\033[00m\]% '
