#!/bin/bash
# running_commands.sh
#
cd ~
mv homework homework_orig
mkdir homework
touch ./file1
cp file1 file2
echo "#!/bin/bash" > ./file2
echo "echo \"Hello world!\"" >> ./file2
chmod a+c ./file2

bash ./file2