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

arr1=("one" "two" "three" "four")
arr2[0]=-1
arr2[1]=1
arr2[2]=2

for i in "${arr1[@]}"; do
    echo $i
done

echo "arr2[0]=${arr2[0]}"
echo "arr2[1]=${arr2[1]}"
echo "arr2[2]=${arr2[2]}"

echo "arr1[@]=${arr1[@]}"
echo "arr2[@]=${arr2[@]}"
echo "#arr1[1]=${#arr1[1]}"
echo "#arr2[1]=${#arr2[1]}"
echo "#arr1[@]=${#arr1[@]}"
echo "#arr2[@]=${#arr2[@]}"


IFS='+' sum1=$(echo "scale=1;${arr2[*]}"|bc)
echo "scale=1;${arr2[*]}"
echo "Sum1=$sum1"
sum2=$((arr2[0]+arr2[1]+arr2[2]))
echo "Sum2=$sum2"