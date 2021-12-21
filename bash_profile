# ~/.bash_profile

# - environment variables - #

export EDITOR=emacsclient\ -c\ -nw
export SUDO_EDITOR=emacsclient\ -c\ -nw
export BROWSER=chromium
export TERM=xterm-256color
export PAGER=less
export HISTCONTROL=ignoredups
export PATH=$PATH:~/bin:~/.local/bin:/usr/sbin:/sbin

# - load bashrc - #

. ~/.bashrc
