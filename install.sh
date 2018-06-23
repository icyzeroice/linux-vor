#!/bin/bash

##
# initialize the work path
# @param {$1} filename
#
init_project_path() {
  entry_file=$(readlink -f $1)
  workspace_path=$(dirname ${entry_file})

  export PATH=${PATH}:${workspace_path}/src
  echo "[LOG] added workspace to system environmental path"
}

init_project_path $0

. project_path_loader.sh
. main.sh

load_all_working_directory
main