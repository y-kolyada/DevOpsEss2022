#!/bin/bash
# scripts1.sh
#
dir_name="Name_Surname"
script_name=script1.sh
cd ~/homework
echo "#!`which bash`" > ./$script_name
chmod a+x ./$script_name
echo "echo \"Creating folder\"" >> ./$script_name
cat << EOF >> $script_name 
mkdir $dir_name
ls -l | grep "^d"
echo "Creating files"
touch ./Name
touch ./Surname
ls $dir_name
EOF

bash $script_name