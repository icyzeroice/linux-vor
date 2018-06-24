# Setting

enable_plugins=(
  install_packages
  install_git_repos
  install_java
)

# Debian Series (*.deb)
# Use dnf or yum package management
apt_add_repo_list=(

)
apt_install_list=(
  curl
  git
  emacs
)

# Red Hat Series (*.rpm)
# Use apt or apt-get package management
dnf_add_repo_list=(
  
)
dnf_install_list=(
  curl
  git
  emacs
)

# Set which middleware to load
middlewares_loaded_list=(
  
)

