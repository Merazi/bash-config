# ~/.bash_profile

# - environment variables - #
export EDITOR=emacsclient\ -c\ -nw
export SUDO_EDITOR=emacs\ -nw
export TIME_STYLE=locale
export BROWSER=firefox-esr
export TERM=xterm-256color
export PAGER=more
export HISTCONTROL=ignoredups
export PATH=$PATH:~/bin:~/.local/bin

# - load bashrc - #
. ~/.bashrc
