#!/bin/bash
# pos_args.sh
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

i=1
for n in ${@}; do
  echo "Arg$i: $n"
  arr[i]=$n
  (( i++ ))
done

echo ""

i=1
for n in ${@}; do
  if [ $i -eq $# ]; then
    (( res=arr[i]+arr[1] ))
  else
    (( res=arr[i]+arr[i+1] ))
  fi
  echo -n "$res "
  (( i++ ))
done

echo ""
