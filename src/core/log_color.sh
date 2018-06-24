#!/bin/bash

##
# @description -- print in colour
#
# echo -e "\033[${background-color};${color}m words \033[${options}m"
#
# background-color:
#   40-47: black, red, green, yellow, blue, purple, azure, white
# 
# color:
#   30-37: black, red, green, yellow, blue, purple, azure, white
#
# options:
#   ...
#

# color-black=30
# color-red=31
# color-green=32
# color-yellow=33
# color-blue=34
# color-purple=35
# color-azure=36
# color-white=37

# background-color-black=40
# background-color-red=41
# background-color-green=42
# background-color-yellow=43
# background-color-blue=44
# background-color-purple=45
# background-color-azure=46
# background-color-white=47

log_info() {
  echo -e "\033[32m[LOG]\033[0m "$1
}

log__warn() {
  echo -e "\033[33m[WARN]\033[0m "$1
}

log__err() {
  echo -e "\033[31m[ERR]\033[0m "$1
}
