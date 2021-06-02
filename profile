# ; -*- shell-script -*-
# bash environment variables

# misc variables
export EDITOR="/usr/bin/emacsclient -c -nw"
export BROWSER="/usr/bin/firefox-esr"
export PDF_VIEWER="/usr/bin/xpdf"
export TERMINAL="/usr/local/bin/st"

# path directories
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.cargo/env"

# fix java applications in dwm
export _JAVA_AWT_WM_NONREPARENTING=1

# load the bashrc file
. "$HOME/.bashrc"
