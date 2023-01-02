#!/bin/bash

#  Get current vars
# echo app > /tmp/.auth
# echo $PASS >> /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
# Pass as hidden files
scp -i /opt/id_rsa deploy/publish root@192.168.1.78:~/publish
scp -i /opt/id_rsa /tmp/.auth root@192.168.1.78:~/.auth
ssh -i /opt/id_rsa root@192.168.1.78 '~/publish'

