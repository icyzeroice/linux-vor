##
#
#

shell_import setting
shell_import log_color

run_extends() {

  install_command="${package_manager} install"

  for package_name in ${install_package_list[*]}
  do
    install_command="${install_command} ${package_name}"
  done

  log_info "Run \`${install_command}\`"
  ${install_command}
}