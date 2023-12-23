#!/bin/bash

FILES="text1 text2 text3 text4 text5 text6 text7"

for FILE in $FILES
do
	echo "Creating file: $FILE"
	touch $FILE
done
ls

FILES="$FILES text8"
for FILE in $FILES
do
	if [ -e $FILE ]
	then
		echo "File  $FILE exists, deleting the file now"
		rm $FILE
		ls | grep "text*"
	else
		echo "File $FILE does not exists"
	fi
done
