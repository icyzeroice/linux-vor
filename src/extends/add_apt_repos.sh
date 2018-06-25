##
# Warn: For apt/apt-get
#

shell_import setting
shell_import log_color

add_apt_repos() {

  log_warn "\"add_apt_ppa\" is only suitable for Linux distributions using apt/apt-get"
  
  for ppa_name in ${install_package_repo_list[*]}
  do
    add-apt-repository ppa:${ppa_name}
  done
}