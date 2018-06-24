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

get_package_manager() {

  # TODO: encapsulation the repeat code

  type apt >/dev/null 2>&1
  if [ $? == 0 ]
  then
    echo "apt"
    exit 0
  fi

  type apt-get >/dev/null 2>&1
  if [ $? == 0 ]
  then
    echo "apt-get"
    exit 0
  fi

  type dnf >/dev/null 2>&1
  if [ $? == 0 ]
  then
    echo "dnf"
    exit 0
  fi

  type yum >/dev/null 2>&1
  if [ $? == 0 ]
  then
    echo "yum"
    exit 0
  fi

  type pacman >/dev/null 2>&1
  if [ $? == 0 ]
  then
    echo "pacman"
    exit 0
  fi
}
