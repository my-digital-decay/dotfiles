# .zlogin

echo .zlogin

# source the local sh_func if it exists
if [ -e "$HOME/dotfiles/sh_login" ] ; then
  source "$HOME/dotfiles/sh_login"
fi

