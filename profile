# ; -*- shell-script-mode -*-
# bash environment variables

# misc variables
export EDITOR="/usr/local/bin/emacs"
export SUDO_EDITOR="/usr/local/bin/emacs -nw"
export BROWSER="/usr/bin/firefox"
export TERM="xterm-256color"

# path directories
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.cargo/bin

# fix java applications in dwm
# export _JAVA_AWT_WM_NONREPARENTING=1

# make firefox work in wayland
# export MOZ_ENABLE_WAYLAND=1

# run qt apps on wayland
# export QT_QPA_PLATFORM=wayland

# uncomment this line if you're using a login shell:
#. ~/.bashrc
