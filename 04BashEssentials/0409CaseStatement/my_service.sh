#!/bin/bash
# my_service.sh
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

case $1 in
  start)
    echo "Service started"
    sleep 9999 &
    ;;
  stop)
    PROC=$$
    echo $PROC
    ps -f $PROC
    echo "Service stopped"
    ;;
  restart)
    bash ./my_service.sh stop
    bash ./my_service.sh start
    ;;
  *)
    echo "
    - add your service to PATH
    - run your script with start and restart arguments in background
    - run your script with stop and help arguments"
    ;;
esac
