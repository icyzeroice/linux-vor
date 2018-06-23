#!/bin/bash

# find all the project file first!
entry_file=$(readlink -f $0)
workspace_path=$(dirname ${entry_file})
export PATH=${PATH}:${workspace_path}/src

. add_project_dir.sh
load_all_working_directory ${workspace_path}

echo "[LOG] added workspace to system environmental path"
# Main Body
. main.sh

main