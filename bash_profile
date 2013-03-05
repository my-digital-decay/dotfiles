# ~/.bash_profile: executed by bash for login shells.
#echo .bash_profile

# source the users bashrc if it exists
if [ -e "$HOME/.bashrc" ] ; then
  source "$HOME/.bashrc"
fi

# source the users bash_login if it exists
if [ -e "$HOME/.bash_login" ] ; then
  source "$HOME/.bash_login"
fi

