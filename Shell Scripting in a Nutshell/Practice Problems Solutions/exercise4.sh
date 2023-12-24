#!/bin/zsh

FILE="/etc/shadow"
if [ -e $FILE ]
then
	echo "Shadow passwords are enabled" 
	if [ -w $FILE ]
	then
		echo "You have permission to edit $FILE"
	else
		echo "You do NOT have permission to edit $FILE"
	fi
else
	echo "File does not exist"
fi
