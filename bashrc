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

. ~/.cargo/env
. ~/.aliases

# - use different colors for regular and root users - #

if [[ $EUID -ne 0 ]]; then
	COLOR='\[\033[01;34m\]'
else
	COLOR='\[\033[01;31m\]'
fi

PS1='\[\e[1;92m\]\h.\u\[\e[00m\] '${COLOR}'\w \$\[\e[00m\] '
