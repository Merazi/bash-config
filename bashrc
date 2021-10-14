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

# . ~/.cargo/env
. ~/.aliases

# - my bash prompt - #

PS1='\[\e[1;32m\]\h.\u \[\e[36m\]\j\[\e[00m\].\[\e[1;36m\]$? \[\e[34m\]\W\[\e[32m\]\[\e[00m\]$ '

# - welcome message - #

cat <<EOF
Hello, $USER
You're using $SHELL as your shell
Enjoy using $(uname --operating-system)
EOF
