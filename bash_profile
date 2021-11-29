# ~/.bash_profile

# - environment variables - #

export EDITOR=emacsclient\ -c\ -nw
export SUDO_EDITOR=nano
export BROWSER=chromium
export TERM=xterm-256color
export DESKTOP_SESSION=gnome
export PAGER=less
export HISTCONTROL=ignoredups
export NO_AT_BRIDGE=1
export QT_QPA_PLATFORMTHEME=qt5ct
export PATH=$PATH:~/bin:~/.local/bin:/usr/sbin:/sbin

# - load bashrc - #

. ~/.bashrc
