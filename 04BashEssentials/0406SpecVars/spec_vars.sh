#!/bin/bash
# spec_vars.sh
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

echo "Script name: $0"
echo "Script args: $*"
echo "Number of arguments: $#"
echo "2nd arg: $2"
echo "4th arg: ${4}"
[[ $2 -eq $4 ]]
echo "Compare 2th and 4th args: $?"
echo "Last args: $_"
ps ef
echo "Proc Num: $$"
echo "Proc Num of last command in bg: $!"
IFS=","
echo $*
echo "$*"
echo $@
echo "$@"