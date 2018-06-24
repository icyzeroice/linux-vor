##
# Setting
#
shell_import callbacks

enabled_extends_list=(
  # fix_nouveau_problem
  # install_packages
  # install_downloaded_packages
  # install_git_repos
  # install_java
  # install_node
)

# TODO: support to download specific branch
# TODO: support set username & password for git https
install_git_repos_list=(
  # | local address you want to put | git repos address | callback (0 means no callback) |
  # ~/Documents/testrepo https://github.com/icyzeroice/.emacs.d.git test_callback
  # ~/.ssh https://gitee.com/icyzeroice/ssh-save.git 0
  # ~/.emacs.d https://github.com/icyzeroice/.emacs.d.git install_emacs_callback
  # ~/.emacs.d git@github.com:icyzeroice/.emacs.d.git install_emacs_callback
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