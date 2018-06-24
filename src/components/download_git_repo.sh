##
# 
#
shell_import log_color

##
# @param {$1} -- target directory
# @param {$2} -- git repo address
# @param {$3} -- callback
#
download_git_repo() {
  git clone $2 $1

  # if floder has existed [exit code 128]
  if [ $? != 0 ]
  then
    log_err "Get wrong while downloading from $2"
    return 1
  fi

  # no callback
  if [ $3 == 0 ]
  then
    return 0
  fi

  # run callback
  $3
  return 0
}