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
echo "Exit code: $?"

arr=$@
echo $arr
echo $@

[[ ${#arr[1]} > ${#arr[2]} ]]
echo "Exit code: $?"
echo ${#arr[1]}
echo ${#arr[2]}