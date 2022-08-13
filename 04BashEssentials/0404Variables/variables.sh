#!/bin/bash
# variables.sh
#
echo "#!`which bash`" > ./$script_name

dir_name="Name_Surname"
script_name=script2.sh

if [ -z ./homework]
    mkdir homework
else
    cd ~/homework
fi

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