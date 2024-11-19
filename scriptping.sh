#!/bin/bash


read -p "Enter your IP-Address: " IP

while [ -z $IP ]
do
	read -p "Enter your IP-Address: " IP
done

ping -c 2 $IP >> /dev/null

if [ $? -eq 0 ]
then
	echo "Successful"
else
	echo "Failed"
fi
