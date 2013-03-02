# ~/.bash_profile: executed by bash for login shells.

# source the users bashrc if it exists
if [ -e "$HOME/.bashrc" ] ; then
  source "$HOME/.bashrc"
fi

# source the users bash_aliases if it exists
if [ -e "$HOME/.bash_aliases" ] ; then
  source "$HOME/.bash_aliases"
fi

# source the users bash_functions if it exists.
# This file contains user defined bash functions
if [ -e "$HOME/.bash_functions" ] ; then
  source "$HOME/.bash_functions"
fi

# add bash completion from brew
if [ -f `brew --prefix`/etc/bash_completion ] ; then
  source `brew --prefix`/etc/bash_completion
fi

#MacPorts Installer addition on 2011-03-09_at_23:07:16: adding an appropriate PATH variable for use with MacPorts.
PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# brew path takes precedence over MacPorts
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# add user PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH=$HOME/bin:$PATH
fi

# Custom prompt (cygwin style)
#export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[36m\]\w\[\e[0m\]\n\$ '
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[36m\]\w$(__git_ps1)\[\e[0m\]\n\$ '

# node.js path
export NODE_PATH=/usr/local/lib/node_modules

#
# Settings specified for android development
#
# set the number of open files to be 1024
ulimit -S -n 1024

# save out the base path so other commands can reset the PATH if needed
export BASE_PATH=$PATH
