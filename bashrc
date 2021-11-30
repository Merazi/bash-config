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

# - mingw64 prompt wih git branch name - #

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='\n\[\e[1;32m\]\h \[\e[35m\]\u \[\e[33m\]\w \[\e[36m\]$(parse_git_branch)\n\[\e[00m\]\$ '
