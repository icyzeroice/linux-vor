##
# @description -- get the package manager in this Linux distribution
#
#   [apt/apt-get]
#     for Ubuntu, Debian, etc.
# 
#   [dnf/yum]
#     for Fedora, CentOS, etc.
#
#   [pacman]
#     for Arch-Linux
#
# TODO: reserve? or use setting?
#

shell_import check_command

get_package_manager() {

  # TODO: encapsulation the repeat code

  check_command apt
  if [ $? == 0 ]
  then
    echo "apt"
    exit 0
  fi

  check_command apt-get
  if [ $? == 0 ]
  then
    echo "apt-get"
    exit 0
  fi

  check_command dnf
  if [ $? == 0 ]
  then
    echo "dnf"
    exit 0
  fi

  check_command yum
  if [ $? == 0 ]
  then
    echo "yum"
    exit 0
  fi

  check_command pacman
  if [ $? == 0 ]
  then
    echo "pacman"
    exit 0
  fi
}
