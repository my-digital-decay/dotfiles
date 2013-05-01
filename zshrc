# dotfiles/zshrc
# Author: keith w. thompson

#echo dotfiles/zshrc

# source the common shrc
if [ -e "${HOME}/dotfiles/shell/shrc" ] ; then
  source "${HOME}/dotfiles/shell/shrc"
fi

# options
setopt prompt_subst
#setopt auto_cd
setopt auto_pushd
setopt pushd_silent
setopt pushd_minus
setopt pushd_ignore_dups

setopt extended_history
setopt hist_reduce_blanks
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt append_history
setopt share_history

setopt c_bases

# modules
autoload -U colors && colors
autoload -U promptinit && promptinit
autoload -U compinit && compinit
autoload -U zcalc

# add some key bindings
bindkey '\e[3~' delete-char
bindkey '\e[2~' overwrite-mode
bindkey ' ' magic-space

# Custom prompt (cygwin style)
case ${TERM} in
	xterm*|rxvt*|gnome*|screen*)
		PROMPT="
%{$fg[green]%}%m%{$reset_color%} %{$fg[cyan]%}%~ %{$reset_color%}
%(!.#.$) "
		;;
	*)
		PROMPT="
%m %~
%(!.#.$) "
		;;
esac

