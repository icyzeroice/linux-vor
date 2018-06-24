##
# Setting
#

enabled_extends_list=(
  install_packages
  # install_downloaded_packages
  # install_git_repos
  # install_java
)

package_manager=apt
package_setup=dpkg

#
# ---------- Debian Series (*.deb) ----------
# Use dnf or yum package management
# repo:
#   sudo add-apt-repository ppa:webupd8team/java
#

install_package_repo_list=(
  webupd8team/java
)

install_package_list=(
  curl
  git
  emacs
)

# ---------- Red Hat Series (*.rpm) ----------
# Use apt or apt-get package management

# install_package_repo_list=(
#   webupd8team/java
# )

# install_package_list=(
#   curl
#   git
#   emacs
# )

# ---------- Arch Series ----------
# Use pacman package management

# install_package_repo_list=(
#   webupd8team/java
# )

# install_package_list=(
#   curl
#   git
#   emacs
# )
