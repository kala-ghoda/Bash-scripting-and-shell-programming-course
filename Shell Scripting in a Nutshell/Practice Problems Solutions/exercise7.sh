#!/bin/zsh

FILE=$1

if [ -z $FILE ]
then
	echo "Error: Arugment not provided"
elif [ -f $FILE ]
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
