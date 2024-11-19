#!/usr/bin/expect -f
#
spawn ./question.sh

expect "Enter your name: "
send "Farzad\r"
expect "Enter your age: "
send "50\r"
expect eof
