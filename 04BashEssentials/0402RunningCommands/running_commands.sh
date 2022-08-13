#!/bin/bash
# running_commands.sh
#
cd ~
mv homework homework_tmp
mkdir homework
cd homework
touch ./file1
cp file1 file2
echo "#!/bin/bash" > ./file2
echo "echo \"Hello world!\"" >> ./file2
chmod a+x ./file2

bash ./file2