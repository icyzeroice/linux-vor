echo "[LOG] <project_path_loader.sh> loaded"

##
# find all file from the project
#

add_project_directory() {
  export PATH=${PATH}:$1/$2
}

add_all_working_directory() {
  
  # list the directory name relative to the project path
  directory_list=(
    src/components
    src/plugins
    config
  )

  for relative_path in ${directory_list[*]}
  do
    load_project_directory $1 ${relative_path}
  done

  echo ""
}
