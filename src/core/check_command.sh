##
#
#

shell_import log_color

check_command() {
  type $1 >/dev/null 2>&1

  is_exist=$?

  if [[ $2 && ${is_exist} == 1 ]]
  then
    log_err "Can not find command \`$1\`"
    exit 1
  elif [ ${is_exist} != 0 ]
  then
    log_warn "Can not find command \`$1\`"
    return 1
  fi

  log_info "Command \`$1\` is found"
  return 0
}