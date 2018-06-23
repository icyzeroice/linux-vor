
#
# get package manager:
#
#   [apt/apt-get]
#
#     for Ubuntu, Debian, etc.
# 
#   [dnf/yum]
#
#     for Fedora, CentOS, etc.
#
#   [pacman]
#
getPackageManager() {
  if [ `type type` == 0 ]
  then
    if [ `type apt` == 0 ]
    then
      echo "apt"
      exit
    elif [ `type apt-get` == 0 ]
    then
      echo "apt-get"
      exit
    elif [ `type dnf` == 0 ]
    then
      echo "dnf"
      exit
    elif [ `type pacman` == 0 ]
    then
      echo "pacman"
      exit
    else
      echo ""
  else
    
  
}