#!/bin/zsh

echo "Enter file/directory name"
read FILE

if [ -f $FILE ]
then
	echo "File is a regular file"
	ls -l $FILE
elif [ -d $FILE ]
then
	echo "File is a regular directory"
	ls -l $FILE
else
	echo "Not a regular file/directory"
fi
