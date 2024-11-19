#!/bin/bash
#

read -p "Enter your server IP: " IP
read -p "Enter your server Username: " User
read -p "Enter your server Password: " Pass
read -p "Enter your local address: " Local
read -p "Enter your destination address: " Dst

ping -c 1 $IP >> /dev/null
if [ $? -eq 0 ]; then
   /usr/bin/expect << EOF
   spawn sshpass -p $Pass scp $Local $User@$IP:$Dst
   expect "*(yes/no)?*"
   send "yes\r"
   expect eof
EOF
 echo "The file was sent successfully"
else
	echo "The sent was interrupted"
fi
