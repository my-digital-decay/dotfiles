# ~/.zlogin
#echo .zlogin

# requires the git-prompt.plugin to be used (see .sh/plugins)
GIT_PS1_SHOWDIRTYSTATE=yes
#GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWUPSTREAM="verbose"
GIT_PS1_SHOWSTASHSTATE=yes
GIT_PS1_SHOWUNTRACKEDFILES=yes
GIT_PS1_PREFIX="["
GIT_PS1_SUFFIX="]"

# Custom prompt (cygwin style)
case ${TERM} in
	xterm*|rxvt*|gnome*|screen*)
		GIT_PS1_SHOWCOLORHINTS=yes
		PROMPT='
%{$fg[green]%}%n@%m%{$reset_color%} %{$fg[cyan]%}%~%{$reset_color%} $(__git_ps1)
%(!.#.$) '
		;;
	*)
		PROMPT="
%n@%m %~ $(__git_ps1)
%(!.#.$) "
		;;
esac

#RPROMPT='$(__git_ps1)'

# source the local sh_func if it exists
if [ -e "$HOME/.shell/login.sh" ] ; then
  source "$HOME/.shell/login.sh"
fi

