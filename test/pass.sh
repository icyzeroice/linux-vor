pass_variable() {

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
  
  export $1="$1.sh"

  echo "[LOG] load module $1"

  return 0
}

pass_variable module_name
pass_variable module_name