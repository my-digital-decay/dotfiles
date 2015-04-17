function _fab_complete() {
    local cur
    if [ -f "fabfile.py" ]; then
        cur="${COMP_WORDS[COMP_CWORD]}"
        COMPREPLY=( $(compgen -W "$(fab -F short -l)" -- ${cur}) )
        return 0
    else
        # no fabfile.py found. Don't do anything.
        return 1
    fi
}
if [ -f /usr/local/etc/bash_completion ] && ! shopt -oq posix; then
    . /usr/local/etc/bash_completion
    complete -o nospace -F _fab_complete fab
fi
