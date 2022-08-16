#!/bin/bash
# in_out.sh
#
DIR="./homework"
cd ~

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

echo "Task finished" >2