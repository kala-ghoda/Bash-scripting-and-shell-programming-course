#!/bin/bash

VAR1=90
VAR2=54

if [ $VAR1 -ne $VAR2 ]
then
	GLOBAL_PATH=$HOME
	if [ "$GLOBAL_PATH" = "$(pwd)" ]
	then
		echo "Conditions are cool!"
	else
		echo "Damn, conditions are cool!"
	fi

	VAR3=8934
	VAR4=8394
	if [ "$VAR3" -lt "$VAR4" ]
	then
		echo "Lesser"
	elif [ "$VAR3" -gt "$VAR4" ]
	then
		echo "Greater"
	else
		echo "Equal"
	fi
fi
