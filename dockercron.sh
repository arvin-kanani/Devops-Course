#!/bin/bash
#
#
echo '* * * * * for name in $(docker ps -a --format "{{.Names}}");do timestmp=$(date +%Y%m%d_%H%M);docker commit $name $name:$timestmp;if [ $? -eq 0 ];then echo "Making Image was Successful";else echo "Making Image was Failed";fi;done' > crontabdocker

crontab crontabdocker

crontab -l
