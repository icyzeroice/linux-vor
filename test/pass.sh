pass_variable() {

  # throw output stream into black hole
  type $1 >/dev/null 2>&1
  
  if [ $? == 1 ]
  then
    echo "[ERR] $1 is a existed command"
    return 1
  fi
  
  export module_name="module_name.sh"

  return 0
}

pass_variable module_name