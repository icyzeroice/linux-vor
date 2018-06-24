#!/bin/bash

##
# find all the project file first!
#

# 1. get absolute pathname of install.sh
# (use `readlink` to fit soft link (for example, use `ln -s`))
entry_file=$(readlink -f $0)

# 2. get absolute path of this project
workspace_path=$(dirname ${entry_file})
export PATH=${PATH}:${workspace_path}/src

# 3. load add_project_dir.sh file to system PATH
. add_project_dir.sh

# 4. add all the project files to system PATH temporarily
add_all_working_directory ${workspace_path}

# enable module loader
. shell_modularity.sh

# Main Launcher Programe File(load exactly one time)
shell_import main
main