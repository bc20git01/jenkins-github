#!/bin/bash

#  Get current vars
# echo app > /tmp/.auth
# echo $PASS >> /tmp/.auth
echo $BUILD_NUMBER > /tmp/.auth
echo "..BUILD_TAG.."
echo $BUILD_TAG 

echo "..BUILD_NUMBER.."
echo $BUILD_NUMBER


# Pass as hidden files

# WORKSPACE=/home/jenkinssvc/pipe-app-deploy/jenkins-github
ssh -o StrictHostKeyChecking=no -i /opt/key jenkins@192.168.1.78

echo "..... Start SCP Copy ....."

scp -o StrictHostKeyChecking=no -i /opt/key ./deploy/publish 192.168.1.78:/tmp/publish
scp -o StrictHostKeyChecking=no -i /opt/key /tmp/.auth 192.168.1.78:/tmp/.auth
ssh -o StrictHostKeyChecking=no -i /opt/key 192.168.1.78 "/tmp/publish"

