# merazi's bashrc #

# - some quality of life tweaks - #

shopt -s autocd cdspell checkjobs checkwinsize dirspell direxpand \
       dirspell globstar gnu_errfmt histappend histverify \
       inherit_errexit nocasematch

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

# - my bash prompt - #

PS1="\[\e[1;96m\]\j:$? \[\e[34m\]\w \[\e[32m\]\u@\h\[\e[00m\]: "
