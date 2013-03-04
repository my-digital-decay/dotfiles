# .zlogin

echo .zlogin

# for displaying git info in prompt
if [ -f "$HOME/.sh/git-prompt.sh" ] ; then
  source "$HOME/.sh/git-prompt.sh"
fi

GIT_PS1_SHOWDIRTYSTATE=yes
GIT_PS1_SHOWCOLORHINTS=yes
#GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWSTASHSTATE=yes
GIT_PS1_DIRTY="%{$fg[red]%}✱%{$reset_color%}"
GIT_PS1_CLEAN="%{$fg[green]%}✓%{$reset_color%}"
GIT_PS1_PREFIX="["
GIT_PS1_SUFFIX="]"

PROMPT='
%{$fg[green]%}%n@%m%{$reset_color%} %{$fg[cyan]%}%~%{$reset_color%} $(__git_ps1)
%(!.#.$) '

#RPROMPT='$(__git_ps1)'

# source the local sh_func if it exists
if [ -e "$HOME/dotfiles/sh_login" ] ; then
  source "$HOME/dotfiles/sh_login"
fi

