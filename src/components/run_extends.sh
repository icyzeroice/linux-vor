##
#
#

shell_import setting
shell_import log_color

run_extends() {
  for extend_name in ${enabled_extends_list[*]}
  do
    shell_import ${extend_name}
    log_info "Run \`${extend_name}\`"
    ${extend_name}
  done
}