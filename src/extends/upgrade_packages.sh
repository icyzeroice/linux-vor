##
#
#

shell_import setting
shell_import log_color

upgrade_packages() {
  $package_manager update
  $package_manager upgrade --fix-missing
  
  if [ $? != 0 ]
  then
    log_warn "No-problem.jpg..."
    log_warn "Analyze-carefully.jpg..."
  fi
}