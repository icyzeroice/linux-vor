##
#
#

install_node() {
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
  command -v nvm
  nvm install 8.11.2
}
