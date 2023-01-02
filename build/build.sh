#!/bin/bash

echo "######################"
echo "*** Building image ***"
echo "######################"

cd build
docker build -t bc20dock01/webapp01:$BUILD_NUMBER .



