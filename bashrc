#!/usr/bin/env bash

# merazi's bashrc #

# - some quality of life tweaks - #

shopt -s autocd cdspell checkjobs checkwinsize dirspell \
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
