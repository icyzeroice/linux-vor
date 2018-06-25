##
#
#

shell_import log_color
shell_import check_root_permission
shell_import run_extends

##
# Main
#
main() {
  echo_in_color 34 "" "----- Easy Linux Config -----"
  
  check_root_permission
  
  run_extends

  echo_in_color 34 "" "----- End -----"
}