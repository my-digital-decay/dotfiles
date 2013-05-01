# ls.plugin.sh
# Author: keith w. thompson

# Colors for ls
export CLICOLOR=1
export LSCOLORS=ExGxCxDxBxegedabagacad

# platform specific ls color settings
case $UNAME in
	Darwin)
		alias ls='ls -G'
		;;
	*)
		alias ls='ls --color=auto'
		;;
esac

alias ll='ls -lh'
alias la='ls -A'
alias lla='ls -lA'

