#!/bin/bash
# functions.sh
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


f_result=""

fun_1 () {
  i=1
  for n in ${@}; do
    (( mul = n * n ))
    [[ $print_yn == "y" ]] && echo -n "$mul "
    arr[i]=$n
    [[ $i -eq 1 ]] && f_result=$mul
    (( i++ ))
  done
}

fun_2 () {
  for n in ${@}; do
    fun_1 $n
    (( mul_1 = f_result + 1 ))
    echo $mul_1
  done
}


print_yn="y"
fun_1 "5" "6" "1" "3" "9"
echo ""

print_yn="n"
fun_2 ${@}
echo ""

: <<'COMMENTS'
#
COMMENTS