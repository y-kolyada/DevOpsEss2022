#!/bin/bash
# scripts2.sh
#
dir_name="Name_Surname"
script_name=script2.sh
cd ~/homework
echo "#!`which bash`" > ./$script_name
chmod a+x ./script.sh
echo "echo \"Creating folder\"" >> ./$script_name
cat >> $script_name << EOF
mkdir $dir_name
ls -l | grep "^d"
echo "Creating files"
touch ./Name
touch ./Surname
ls $dir_name
EOF  

bash $script_name