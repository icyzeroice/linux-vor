##
#
#

shell_import setting

npm_install_global() {

  # TODO: reuse?
  install_command="npm i -g"

  for package_name in ${npm_install_global_list[*]}
  do
    install_command="${install_command} ${package_name}"
  done

  log_info "Run \`${install_command}\`"
  ${install_command}
}
