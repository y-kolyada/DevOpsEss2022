#!/bin/bash
# variables.sh
#
NAME="Name_Surname"
DIR="./homework/"
cd ~

if [ -d $DIR ]; then
    cd $DIR
else
    mkdir $DIR
fi

echo "FILE=""new_file"" > ./vars
source ./vars

mkdir $NAME
touch ./$NAME/$FILE
ls -R .