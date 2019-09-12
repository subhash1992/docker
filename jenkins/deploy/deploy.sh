#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /var/jenkins_home/.ssh/prod /tmp/.auth root@13.127.132.53:/tmp/.auth
scp -i /var/jenkins_home/.ssh/prod ./jenkins/deploy/publish root@13.127.132.53:/tmp/publish
ssh -i /var/jenkins_home/.ssh/prod root@13.127.132.53 "/tmp/publish"

