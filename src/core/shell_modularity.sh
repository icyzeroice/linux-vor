##
# @description -- for shell modularity
# TODO: ...
#

shell_import() {
  
  if [ $(eval echo \$$1) ]
  then
    echo -e "\033[32m[LOG]\033[0m module \"$1\" has been loaded"
    return
  fi

  # throw output stream into black hole
  type $1 >/dev/null 2>&1
  
  if [ $? == 0 ]
  then
    echo -e "\033[31m[ERR]\033[0m \"$1\" is a existed command"
    return 1
  fi

  # load module file
  . $1.sh
  
  # export module name 
  export $1="$1.sh"
  
  echo -e "\033[32m[LOG]\033[0m load module \"$1\""
  return 0
}
