#!/bin/bash

shell_import log_color
shell_import check_root_permission

##
# Main
#
main() {
  echo_in_color 34 "" "----- Easy Linux Config -----"
  check_root_permission

  echo_in_color 34 "" "----- End -----"
}