# ~/.zshrc

echo .zshrc

# add some key bindings
bindkey '\e[3~' delete-char
bindkey '\e[2~' overwrite-mode
bindkey ' ' magic-space

# MacPorts Installer addition on 2011-03-09_at_23:07:16: adding an appropriate PATH variable for use with MacPorts.
PATH=/opt/local/bin:/opt/local/sbin:$PATH

# brew path takes precedence over MacPorts
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# source the users sh_aliases if it exists
if [ -e "$HOME/dotfiles/sh_aliases" ] ; then
  source "$HOME/dotfiles/sh_aliases"
fi

# source the local sh_func if it exists
if [ -e "$HOME/dotfiles/sh_func" ] ; then
  source "$HOME/dotfiles/sh_func"
fi

