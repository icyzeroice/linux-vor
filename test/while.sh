list=(
  item0
  item1
  item2
  item3
  item4
  item5
)

count=0
len=${#list[*]}

while(($count < len))
do
  echo ${list[${count}]}
  count=$count+1
  echo ${list[${count}]}
  count=$count+1
  echo ${list[${count}]}
  count=$count+1
done