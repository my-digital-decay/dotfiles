# ~/.zshrc
#echo .zshrc

# options
setopt prompt_subst
#setopt auto_cd
setopt auto_pushd
setopt pushd_silent
setopt pushd_minus
setopt pushd_ignore_dups
setopt share_history
setopt hist_save_no_dups
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

# source the common shrc
if [ -e "$HOME/.sh/shrc" ] ; then
  source "$HOME/.sh/shrc"
fi

