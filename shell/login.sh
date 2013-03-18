# login.sh

# node.js path
export NODE_PATH=/usr/local/lib/node_modules

# save out the base path so other commands can reset the PATH if needed
export BASE_PATH=$PATH

# plugins (login only)
login_plugins=(brew git-prompt osx)

# Load all of the login plugins
#for plugin ($login_plugins); do #zsh only
for plugin in "${login_plugins[@]}"; do
  if [ -f $DOTSHELL/plugins/$plugin.plugin.sh ]; then
    source $DOTSHELL/plugins/$plugin.plugin.sh
  fi
done


