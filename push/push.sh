#!/bin/sh

echo "########################"
echo "*** Preparing to push ***"
echo "########################"

# REGISTRY="linuxfacilito.online:5043"
# IMAGE="app"


echo "*** Logging in ***"
docker login -u $dockid -p $dockpw
echo "*** Tagging image ***"
# docker tag $IMAGE:$BUILD_TAG $REGISTRY/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push bc20dock01/webapp01:${env.BUILD_NUMBER}


