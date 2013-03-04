# ~/.zshrc

echo .zshrc

# options
setopt prompt_subst

# modules
autoload -U colors && colors
autoload -U promptinit && promptinit
autoload -U compinit && compinit

# add some key bindings
bindkey '\e[3~' delete-char
bindkey '\e[2~' overwrite-mode
bindkey ' ' magic-space

# Custom prompt (cygwin style)
PROMPT="
%{$fg[green]%}%m%{$reset_color%} %{$fg[cyan]%}%~ %{$reset_color%}
%(!.#.$) "

# MacPorts Installer addition on 2011-03-09_at_23:07:16: adding an appropriate PATH variable for use with MacPorts.
PATH=/opt/local/bin:/opt/local/sbin:$PATH

# brew path takes precedence over MacPorts
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# source the users sh_aliases if it exists
if [ -e "$HOME/.sh/sh_aliases" ] ; then
  source "$HOME/.sh/sh_aliases"
fi

# source the local sh_func if it exists
if [ -e "$HOME/.sh/sh_func" ] ; then
  source "$HOME/.sh/sh_func"
fi

