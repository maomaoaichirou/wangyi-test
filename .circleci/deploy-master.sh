# Download latest binary from release to EC2

#!/usr/bin/env bash

user=ec2-user
host=54.66.230.45
src=`pwd`"/"
des=/opt/gocode
now=`date +"%Y-%m-%d %H:%M:%S"`
#ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no  ec2-user@54.66.230.45 "sudo ls /opt/"
#sync -vzrc --delete  --exclude ".git"  --exclude ".env"   --exclude ".circleci"   $src  $user@$host:$des

#ssh $user@$host "sudo chown -R ec2-user:ec2-user $des"

#ssh $user@$host "chmod -R 775 $des/bootstrap/cache && chmod -R 775 $des/storage && cd $des && pwd && ls -al"

echo "$now update $host $des code"

