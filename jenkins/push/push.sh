#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u 24051989 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG 24051989/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push 24051989/$IMAGE:$BUILD_TAG

