#!/bin/zsh

SHEBANG="#!/bin/zsh"
FILES=($(ls ../ | grep ".sh"))
cd ../

for FILE in $FILES
do
	if [ -e $FILE ]
	then
		echo $SHEBANG > $FILE
	else
		echo "File $FILE does not exist"
		break
	fi
done
echo "Done!"
