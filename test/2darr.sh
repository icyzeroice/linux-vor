arr1=(
  yes
  no
)

arr2=(
  1
  2
)

list=(
  arr1
  arr2
)

list2=(
  aa aaa
  aa bbb
)

eval "echo \$"${list[0]}"[1]"
echo ${list2[0]}