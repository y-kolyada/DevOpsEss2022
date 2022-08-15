#!/bin/bash
# odd_even.sh
#
DIR="./homework"

if [ -d $DIR ]; then
    cd $DIR
    echo "cd into $DIR..."
else
    mkdir $DIR
    echo "mkdir $DIR..."
    cd $DIR
fi

i=0
for a in $@; do
  arr[i]=$a
  ((i=i+1))
done

if (( i % 2 == 0 )); then
  echo "Odd"
else
  echo "Even"
fi

rm -f my_script.sh

echo "#!`which bash`" > ./script.sh
chmod a+x ./my_script.sh

tee -a my_script.sh << EOF
LAST= \$_

if [ \$# -lt 2 ]; then
  echo \$1
elif [ \$# -gt 2 ] && [ \$# -lt 4 ]; then
  echo \$LAST
else
  echo "Invalid number of arguments"
fi
EOF