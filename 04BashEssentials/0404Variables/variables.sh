#!/bin/bash
# variables.sh
#
NAME="Name_Surname"
cd ~

if [ -d "./homework/" ]; then
    cd ~/homework
else
    mkdir homework
fi

echo "FILE=""new_file"" > ./vars
source ./vars

mkdir $NAME
touch ./$NAME/$FILE
ls -R .