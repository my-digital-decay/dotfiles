# ~/.bashrc
#echo .bashrc

# Don't put duplicate lines in the history.
export HISTCONTROL=ignoredups

# Ignore some controlling instructions
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls:ls:ll'

# Colors for ls
export CLICOLOR=1
export LSCOLORS=ExGxCxDxBxegedabagacad

# default prompt
case ${TERM} in
	xterm*|rxvt*|gnome*|screen*)
		PS1='\[\e]0;\w\a\]\n\[\e[32m\]\h \[\e[36m\]\w\[\e[0m\]\n\$ '
		;;
	*)
		PS1='\n\h \w\n\$ '
		;;
esac

# source the common shrc
if [ -e "$HOME/.sh/shrc" ] ; then
  source "$HOME/.sh/shrc"
fi

