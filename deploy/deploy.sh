#!/bin/bash

#  Get current vars
# echo app > /tmp/.auth
# echo $PASS >> /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
# Pass as hidden files
cd /home/jenkinssvc/pipe-app-deploy/jenkins-github

scp -i /opt/key ./deploy/publish 192.168.1.78:~/publish
scp -i /opt/key /tmp/.auth 192.168.1.78:~/.auth
ssh -i /opt/key 192.168.1.78 '~/publish'

