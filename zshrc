# dotfiles/zshrc
# Author: keith w. thompson

#echo dotfiles/zshrc

# modules
autoload -U colors && colors
autoload -U promptinit && promptinit
autoload -U compinit && compinit
autoload -U zcalc

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

# add some key bindings
bindkey '\e[3~' delete-char
bindkey '\e[2~' overwrite-mode
bindkey ' ' magic-space

# partial history search
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Custom prompt (cygwin style)
case ${TERM} in
	xterm*|rxvt*|gnome*|screen*|cygwin)
		PROMPT=$'\n'"%{$fg[green]%}%m%{$reset_color%} %{$fg[cyan]%}%~ %{$reset_color%}"$'\n'"%(!.#.$) "
		;;
	*)
		PROMPT=$'\n'"%m %~"$'\n'"%(!.#.$) "
		;;
esac

# VI keybindings w/ mode display 
#setopt vi

# clear mode after new line
#function accept-line {
#    POSTDISPLAY=""
#    builtin zle .accept-line
#}
#zle -N accept-line

## display mode when mode changed
#function zle-keymap-select {
#    if [[ "$KEYMAP" == vicmd ]] ; then
#        POSTDISPLAY=$'\n'"-- NORMAL --"
#    else
#        POSTDISPLAY=$'\n'"-- INSERT --"
#    fi
#}
#zle -N zle-keymap-select

