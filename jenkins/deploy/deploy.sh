#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /root/jenkins-pipeline/jenkins_home/.ssh/prod /tmp/.auth root@13.233.30.180:/tmp/.auth
scp -i /root/jenkins-pipeline/jenkins_home/.ssh/prod ./jenkins/deploy/publish root@13.233.30.180:/tmp/publish
ssh -i /root/jenkins-pipeline/jenkins_home/.ssh/prod root@13.233.30.180 "/tmp/publish"

