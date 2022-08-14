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

[[ $1 > $2 ]]
echo "Exit code: $?"
echo $#1
echo $#2