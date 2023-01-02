
#!/bin/bash

echo "######################"
echo "*** Building image ***"
echo "######################"

WORKSPACE=/home/jenkinssvc/pipe-app-deploy/jenkins-github

docker build -t bc20dock01/webapp01:$BUILD_NUMBER -f $WORKSPACE/build/Dockerfile .



