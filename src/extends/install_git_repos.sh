##
#
#
shell_import setting
shell_import check_command
shell_import download_git_repo

install_git_repos() {  
  check_command git 1
  
  list_column_num=3
  count=0
  len=${#install_git_repos_list[*]}

  while((${count} < ${len}))
  do
    target_dir=${install_git_repos_list[${count}]}
    repo_address=${install_git_repos_list[${count} + 1]}
    callback_name=${install_git_repos_list[${count} + 2]}
    
    download_git_repo ${target_dir} ${repo_address} ${callback_name}

    count=`expr ${count} + ${list_column_num}`
  done
}