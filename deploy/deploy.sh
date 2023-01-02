#!/bin/bash

#  Get current vars
# echo app > /tmp/.auth
# echo $PASS >> /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
# Pass as hidden files

WORKSPACE=/home/jenkinssvc/pipe-app-deploy/jenkins-github

scp -o StrictHostKeyChecking=no -i /opt/key $WORKSPACE/deploy/publish 192.168.1.78:~/publish
scp -o StrictHostKeyChecking=no -i /opt/key /tmp/.auth 192.168.1.78:~/.auth
ssh -o StrictHostKeyChecking=no -i /opt/key 192.168.1.78 '~/publish'

