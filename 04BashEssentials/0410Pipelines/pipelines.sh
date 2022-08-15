#!/bin/bash
# pipelines.sh
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

export ERR=0 ; export FATAL=0 ; mkdir Name_Surname ; ERR=$?  
if [ $ERR -eq 0 ] ; then touch my_file; ERR=$? ; else FATAL=1 ; fi
if [ $ERR -eq 0 ] && [ $FATAL -eq 0 ] ; then echo "Hello" > my_file ; ERR=$? ; else FATAL=1 ; fi 
if [ $ERR -eq 0 ] && [ $FATAL -eq 0 ] ; then cat my_file > log ; ERR=$? ; else FATAL=1 ; fi 
if [ $ERR -eq 1 ] || [ $FATAL -eq 1 ] ; then echo "Somefing went wrong" ; else echo "Ok!" ; fi

echo "nginx:x:973:970:Nginx web server:/var/lib/nginx:/sbin/nologin" | sed -e "s/\/sbin\/nologin/\/bin\/bash/g" > ./passwd