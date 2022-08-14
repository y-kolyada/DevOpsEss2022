#!/bin/bash
# env_vars_path.sh
#
NAME="Surname"
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

export SURNAME=$NAME
env
WDIR=`pwd`
export PATH=$PATH:$WDIR
echo $PATH
env $PATH

tee -a my_script.sh << EOF
#!/bin/bash
#
env $PATH
EOF
chmod a+x my_script.sh

cd ~
bash my_script.sh