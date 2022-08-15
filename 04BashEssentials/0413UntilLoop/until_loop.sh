#!/bin/bash
# until_loop.sh
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


read -r -p "Enter file name: " fname
head -c 4KB /dev/urandom > $fname
rm -f ${fname}1

fsize=$(($(wc -c $fname | awk '{print $1}')/1000))

until [ $fsize -gt 1024 ] ; do
  cat $fname  >> ${fname}1
  cp -f ${fname}1 $fname
  fnewsize=$(wc -c $fname | awk '{print $1}')
  fsize=$((fnewsize/1000))
  printf "Filesize:  $fsize\n"
done