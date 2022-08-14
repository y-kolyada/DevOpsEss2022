#!/bin/bash
# conditional_ops.sh
#
DIR="./homework"
cd ~

if [ -d $DIR ]; then
    cd $DIR
    echo "cd into $DIR..."
else
    mkdir $DIR
    echo "mkdir $DIR..."
    cd $DIR
fi

[[ $1 == $2 ]]
echo "$?"

i=0
for a in $@; do
  arr[i]=$a
  ((i=i+1))
done

# echo $arr

[[ ${arr[0]} > ${arr[1]} ]]
echo "$?"
#echo "arr[0]=${arr[0]}"
#echo "arr12]=${arr[1]}"


#export TEST="test"
[[ -n `printenv TEST` ]]
  echo "$?"

[[ $3 -ne $4 ]]
  echo $?

[[ $3 -ge $4 ]]
  echo $?
