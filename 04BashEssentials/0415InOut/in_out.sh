#!/bin/bash
# in_out.sh
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


read -p "Input file name: " f_name

cat << 'EOF' > $f_name
An old silent pond...
A frog jumps into the pond,
splash! Silence again.

Autumn moonlight-
a worm digs silently
into the chestnut.

In the twilight rain
these brilliant-hued hibiscus -
A lovely sunset.
EOF

cat $f_name

echo "Task finished" >/dev/stderr
#echo "Task finished" 1>&2
#in_out.sh  2>err.log
#in_out.sh >/dev/null 2>err.log