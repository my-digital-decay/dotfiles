# example shell plugin
#
# This file will be sourced during shell initialization if it is included
# in the plugins=() array inside of your *rc file or if it is included
# in the  login_plugins=() array inside of your *login file

function shell_plugins() {
	echo "shell_plugins example plugin function"
}

