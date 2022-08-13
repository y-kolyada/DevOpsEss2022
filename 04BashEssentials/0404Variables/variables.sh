#!/bin/bash
# variables.sh
#
NAME="Name_Surname"
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

echo "FILE=\"new_file\"" > ./vars
source ./vars

mkdir $NAME
touch ./$NAME/$FILE
ls .
ls $NAME