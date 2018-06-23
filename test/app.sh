#!/bin/bash

# check root right
checkRootRight() {
  if [ "`whoami`" == "root" ]
  then
    echo "[LOG] Already run as root."
  else
    echo "[ERR] Please run the shell script as root."
    exit 1
  fi
}

checkSystem() {
  str="apt"
  echo $str
}

# check installing list
installPackageList() {
  package_manager=$1

  list=(
    curl
    git
  )
  
  install_command="${package_manager} install"

  for package in ${list[*]}
  do
    install_command="${install_command} ${package}"
  done

  apt update
  echo "[RUN] ${install_command}"
  ${install_command}
}

# download package & install
installNode() {

  # install nvm on a new bash
  (curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash)
  
  # active nvm on a different bash
  (
    command -v nvm
    nvm install 8.11.2
  )
}

installJava() {
  add-apt-repository ppa:webupd8team/java
  apt-get update
  apt-get install oracle-java10-installer
}

Main() {
  checkRootRight
  str=$(checkSystem)
  installPackageList ${str}
}

Main