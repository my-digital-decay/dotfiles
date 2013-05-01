# dotfiles/bashrc
# Author: keith w. thompson

#echo dotfiles/bashrc

# source the common shrc
if [ -e "$HOME/dotfiles/shell/shrc" ] ; then
  source "$HOME/dotfiles/shell/shrc"
fi

# Don't put duplicate lines in the history.
export HISTCONTROL=ignoredups

# Ignore some controlling instructions
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls:ls:ll'

# default prompt
case ${TERM} in
	xterm*|rxvt*|gnome*|screen*|cygwin)
		PS1='\[\e]0;\w\a\]\n\[\e[32m\]\h \[\e[36m\]\w\[\e[0m\]\n\$ '
		;;
	*)
		PS1='\n\h \w\n\$ '
		;;
esac

