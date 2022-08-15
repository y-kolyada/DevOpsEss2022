#!/bin/bash
# for_loop.sh
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

sum=0
evrg=0

for n in ${@}; do
  echo -n "$n "
  (( sum = sum + n ))
done

echo -n $'\n'

for (( i=1; i<=$#; i++ )) ; do
  echo -n "${!i} "
done

#echo $'\n'
printf "\n"

(( evrg = sum / $# ))

echo "Sum: $sum"
echo "Agrs number: $#"
echo "Everage Result: $evrg"