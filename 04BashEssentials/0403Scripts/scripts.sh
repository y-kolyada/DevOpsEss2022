#!/bin/bash
# scripts.sh
#
dir_name="Name_Surname"
cd ~/homework
echo "#!`which bash`" > ./script.sh
chmod a+x ./script.sh
echo "echo \"Creating folder\"" >> ./script.sh
tee -a script.sh <<EOF
mkdir $dir_name
ls -l | grep "^d"
echo "Creating files"
touch ./Name
touch ./Surname
ls $dir_name
EOF

bash script.sh