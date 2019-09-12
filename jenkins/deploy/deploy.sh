#!/bin/bash

echo maven-project > /root/jenkins-pipeline/jenkins_home/tmp/.auth
echo $BUILD_TAG >> /root/jenkins-pipeline/jenkins_home/tmp/.auth
echo $PASS >> /root/jenkins-pipeline/jenkins_home/tmp/.auth

scp -i /root/jenkins-pipeline/jenkins_home/.ssh/prod /root/jenkins-pipeline/jenkins_home/tmp/.auth root@13.233.30.180:/tmp/.auth
scp -i /root/jenkins-pipeline/jenkins_home/.ssh/prod /root/jenkins-pipeline/jenkins_home/jobs/pipeline-docker-maven/workspace/jenkins/deploy/publish root@13.233.30.180:/tmp/publish
ssh -i /root/jenkins-pipeline/jenkins_home/.ssh/prod root@13.233.30.180 "/tmp/publish"

