#!/bin/bash

#  Get current vars
# echo app > /tmp/.auth
# echo $PASS >> /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
# Pass as hidden files
scp -i /opt/key deploy/publish root@192.168.1.78:~/publish
scp -i /opt/key /tmp/.auth root@192.168.1.78:~/.auth
ssh -i /opt/key root@192.168.1.78 '~/publish'

