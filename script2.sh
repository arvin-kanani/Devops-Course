#!/bin/bash
#
i=0
while [ $i -le 100 ]
do
	if [ $i -eq 0 ]
	then
		echo "Hello $i times"
	else
	if [ `expr $i % 5` -eq 0 ]
	then
		echo "Hop"
	else
		echo "Hello $i times"
	fi
	fi
	i=`expr $i + 1`
	sleep 1
done

