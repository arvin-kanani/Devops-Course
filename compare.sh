#!/bin/bash
#
read -p "Enter your number: " number

if [ $number -eq 10 ]
then
	echo "your number is 10"
elif [ $number -le 10 ]
then
	echo "Number is smaller than 10"
else
	echo "Number is greater than 10"
fi
