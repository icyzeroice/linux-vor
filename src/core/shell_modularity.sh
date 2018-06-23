#!/bin/bash

##
# @description -- for shell modularity
# TODO: ...
#



module_import() {
  if [ ${$1} ]
  then
    echo "yes"
  fi
}

module_export() {
  echo "export"
}