#!/usr/bin/expect -f
#
set timeout -1

spawn ./sshpass.sh
expect "Enter your server IP: "
send "192.168.179.131\r"
expect "Enter your server Username: "
send "arve2\r"
expect "Enter your server Password: "
send "1384\r"
expect "Enter your local address: "
send "/root/script1.sh\r"
expect "Enter your destination address: "
send "/home/arve2/sshcopy\r"
expect eof
