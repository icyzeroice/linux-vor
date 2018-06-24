##
# @description check whether the program is run as root or not
# TODO: ...
#

shell_import log_color

check_root_permission() {
  if [ "`whoami`" == "root" ]
  then
    log_info "Already run as root."
  else
    log_err "Please run the shell script as root."
    exit 1
  fi
}