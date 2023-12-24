#!/bin/zsh

SHEBANG="#!/bin/zsh"
PREFIX="exercise"
SUFFIX=".sh"
cd ../

for i in {1..8}
do
	FILE=${PREFIX}${i}$SUFFIX
	if [ -e $FILE ]
	then
		echo $SHEBANG > $FILE
	else
		echo "File $FILE does not exist"
		break
	fi
done
echo "Done!"
