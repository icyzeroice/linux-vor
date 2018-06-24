#!/bin/bash

##
# @description -- for shell modularity
# TODO: ...
#

shell_import() {
  
  if [ $(eval echo \$$1) ]
  then
    echo "[LOG] module $1 has been loaded"
    return
  fi

  # throw output stream into black hole
  type $1 >/dev/null 2>&1
  
  if [ $? == 0 ]
  then
    echo "[ERR] $1 is a existed command"
    return 1
  fi

  # load module file
  . $1.sh
  
  # export module name 
  export $1="$1.sh"

  echo "[LOG] load module $1"
  return 0
}
