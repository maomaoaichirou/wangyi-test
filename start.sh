#!/bin/bash
# check the zip file
if [ -f "/opt/gocode-devops/*.zip" ];then
     mv -f ./*.zip /tmp/
else
     echo "Zip file dose not exist"
fi
# check current process
ps -ef|grep TechTestApp|grep -v 'grep'|awk '{print $2}'

if [ $? == 0 ];then
     echo "No Found Process"
else
     echo "The process ID for $pid"
     PID=`ps -ef|grep TechTestApp|grep -v 'grep'`
     kill -9 $PID
fi
# create a database and seed it with test data
/opt/gocode/TechTestApp updatedb -s
sleep 2
# start serving requests
nohup ./TechTestApp serve >output 2>&1 &
