echo "[LOG] <project_path_loader.sh> loaded"

load_working_directory() {
  export PATH=${PATH}/$1
}

load_all_working_directory() {
  
  # list the directory name relative to the project path
  directory_list=(
    src/components
    src/plugins
    config
  )

  for relative_path in ${directory_list[*]}
  do
    echo ${relative_path}
  done
}
