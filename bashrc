#!/usr/bin/env bash

# merazi's bashrc #

# - some quality of life tweaks - #

shopt -s autocd cdspell checkjobs checkwinsize dirspell \
       dirspell globstar gnu_errfmt histappend histverify \
       inherit_errexit nocasematch expand_aliases

bind 'set completion-ignore-case on' \
     'set completion-map-case on'    \
     'set show-all-if-ambiguous on'  \
     'set blink-matching-paren on'

# - use bash-completion, if available - #

[[ -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# - loading additional files - #

# . ~/.cargo/env
. ~/.aliases

# - bash prompt - #

PS1='\h:\w \u% '
