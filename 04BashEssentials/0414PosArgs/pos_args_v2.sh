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
for n in ${@}; do { echo "Arg$i: $n"; arr[i++]=$n; } done

a1=("${@}")                     # copy command line params to array a1
a2=("${a1[@]:1}")               # left shift array a1 to a2
a2[((${#a1[*]}-1))]=${a1[0]}    # add last element to array a2
for (( i=0; i<${#a1[*]}; i++ )); do (( res[i]=a1[i]+a2[i] )); done
echo "${res[@]}"

#echo ">> ${a1[*]}"
#echo ">> ${a2[*]}"

i=1
for n in ${@}; do
  [[ $i -eq $# ]] \
  && (( res=arr[i]+arr[1] )) \
  || (( res=arr[i]+arr[i+1] ));
  echo -n "$res "; (( i+=1 ));
done

echo ""
