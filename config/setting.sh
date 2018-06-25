##
# Setting
#

shell_import callbacks

enabled_extends_list=(
  # fix_nouveau_problem
  add_apt_repos
  # add_dnf_repos
  upgrade_packages
  install_packages
  install_downloaded_packages
  install_git_repos
  install_node
  npm_install_global
  install_zsh
  # install_vscode_extends
)

# TODO: support to download specific branch
# TODO: support set username & password for git https
install_git_repos_list=(
  # | local address you want to put | git repos address | callback (0 means no callback) |
  # ~/Documents/testrepo https://github.com/icyzeroice/.emacs.d.git test_callback
  # ~/.ssh https://gitee.com/icyzeroice/ssh-save.git 0
  ~/.emacs.d https://github.com/icyzeroice/.emacs.d.git install_emacs_callback
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
  webupd8team/java   # java-7/8/9
  linuxuprising/java # java-10
  apt-fast/stable
)

install_package_list=(
  curl
  wget
  aria2
  axel
  git
  emacs
  apt-fast # needs aria2
  # oracle-java8-installer
  oracle-java10-installer
)

# ---------- Red Hat Series (*.rpm) ----------
# Use apt or apt-get package management

# install_package_repo_list=(
#   
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

# ---------- npm ----------
npm_install_global_list=(
  nrm
  webpack
  webpack-dev-server
  gulp
  grunt
  eslint
  sass
  eazydict
)

# ---------- vscode extends ----------
install_vscode_extends=(

)