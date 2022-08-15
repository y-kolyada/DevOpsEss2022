#!/bin/bash
# console.sh
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

while true ; do
  read -r -p "Enter yout command: " cmd
  case $cmd  in
    ls )
      read -r -p "Enter the path: " pa
      ls $pa
      ;;
    pwd )
      pwd .
      ;;
    hi )
      echo "Hello `whoami`"
      ;;
    help )
      echo "
        - commans list: ls, pwd, hi, help, exit"
      ;;
    exit )
      break
      ;;
  esac
done
