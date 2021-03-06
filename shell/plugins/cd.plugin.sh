# func.sh

# This function defines a 'cd' replacement function capable of keeping, 
# displaying and accessing history of visited directories, up to 10 entries.
# To use it, uncomment it, source this file and try 'cd --'.
# acd_func 1.0.5, 10-nov-2004
# Petar Marinov, http:/geocities.com/h2428, this is public domain
cd_func ()
{
  local depth=${CD_DEPTH:=20}
  local x2 the_new_dir adir index
  local -i cnt

  if [[ $1 =  "--" ]]; then
    dirs -v
    return 0
  fi

  if [[ -n $ZSH_NAME ]]; then
	# assumes that the following zsh options are set
	# AUTO_PUSHD
	# PUSHD_IGNORE_DUPS
	# PUSHD_MINUS
	# PUSHD_SILENT
	cd $1
	
    # Trim down everything beyond 11th entry
    popd -$depth 2>/dev/null 1>/dev/null
  else
    the_new_dir=$1
    [[ -z $1 ]] && the_new_dir=$HOME

    if [[ ${the_new_dir:0:1} = '-' ]]; then
      #
      # Extract dir N from dirs
      index=${the_new_dir:1}
      [[ -z $index ]] && index=1
      adir=$(dirs +$index)
      [[ -z $adir ]] && return 1
      the_new_dir=$adir
    fi

    # '~' has to be substituted by ${HOME}
    [[ ${the_new_dir:0:2} = '~' ]] && the_new_dir="${HOME}"
    [[ ${the_new_dir:0:2} = '~ ' ]] && the_new_dir="${HOME}"
    [[ ${the_new_dir:0:2} = '~/' ]] && the_new_dir="${HOME}${the_new_dir:1}"

    # Now change to the new dir and add to the top of the stack
    pushd "${the_new_dir}" > /dev/null
    [[ $? -ne 0 ]] && return 1
    the_new_dir=$(pwd)

    # Remove any other occurence of this dir, skipping the top of the stack
    for ((cnt=1; cnt <= $depth-1; cnt++)); do
      x2=$(dirs +${cnt} 2>/dev/null)
      [[ $? -ne 0 ]] && return 0
      [[ ${x2:0:1} = '~' ]] && x2="${HOME}${x2:1}"
      if [[ "${x2}" = "${the_new_dir}" ]]; then
        popd +$cnt -n 2>/dev/null 1>/dev/null
        cnt=cnt-1
      fi
    done

    # Trim down everything beyond Nth entry
    popd +$depth -n 2>/dev/null 1>/dev/null
  fi
  return 0
}

alias cd=cd_func
alias home='cd ~'

