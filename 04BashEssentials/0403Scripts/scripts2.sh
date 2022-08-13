#!/bin/bash
# scripts2.sh
#
dir_name="Name_Surname"
script_name=script2.sh
cd ~/homework
echo "#!`which bash`" > ./$script_name
chmod a+x ./script.sh
echo "echo \"Creating folder\"" >> ./$script_name
echo "mkdir $dir_name
ls -l | grep ""^d""
echo ""Creating files""
touch ./Name
touch ./Surname
ls $dir_name" >> $script_name 

bash $script_name