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

# MacPorts Installer addition on 2011-03-09_at_23:07:16: adding an appropriate PATH variable for use with MacPorts.
PATH=/opt/local/bin:/opt/local/sbin:$PATH

# source users bin directory
if [ -e "$HOME/bin" ] ; then
	PATH=$HOME/bin:$PATH
fi

# brew path takes precedence over MacPorts
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# source the local sh_aliases if it exists
if [ -e "$HOME/.sh/sh_aliases" ] ; then
  source "$HOME/.sh/sh_aliases"
fi

# source the local sh_func if it exists
if [ -e "$HOME/.sh/sh_func" ] ; then
  source "$HOME/.sh/sh_func"
fi

