(
  echo "1"
  echo "2"
  exit

  echo "3"
)

(
  echo "4"
  exit

  echo "5"
  echo "6"
)
(
  a=233
  echo "test${a}"
)

testFor() {
  dir_list=(
    yes/yse
    no/
  )

  for i_tem in ${dir_list[*]}
  do
    echo ${i_tem}
  done
}
testFor