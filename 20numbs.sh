#!/bin/bash
#
for ((i=1;$i<=5;i++))
do
	read -p "Enter your $i number: " VAR

	if [ $i -eq 1 ]
	then
		MAX=$VAR
		MIN=$VAR
	fi

	if [ $VAR -gt $MAX ]
	then
		MAX=$VAR
	elif [ $VAR -lt $MIN ]
	then
		MIN=$VAR
	fi
done

     echo "Max Number is $MAX"
     echo "Min Number is $MIN"
