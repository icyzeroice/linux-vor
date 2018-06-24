##
#
#

shell_import setting
shell_import log_color
shell_import get_package_manager


install_packages() {
  install_command="${package_manager} install"

  for package_name in ${install_package_list[*]}
  do
    install_command="${install_command} ${package_name}"
  done

  log_info "Run \`${install_command}\`"
  ${install_command}
}