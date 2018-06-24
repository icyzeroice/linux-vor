#!/bin/bash

##
# find all file from the project
#

add_project_directory() {
  export PATH=${PATH}:$1/$2
}

add_all_working_directory() {
  
  # list the directory name relative to the project path
  directory_list=(
    src/core
    src/components
    src/extends
    config
  )

  for relative_path in ${directory_list[*]}
  do
    add_project_directory $1 ${relative_path}
  done

}
