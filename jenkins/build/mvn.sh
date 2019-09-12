#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

WORKSPACE=/root/jenkins-pipeline/jenkins_home/jobs/pipeline-docker-maven/workspace

docker run --rm  -v  "$WORKSPACE/java-app:/app" -v "/root/.m2/:/root/.m2/" -w /app maven:3-alpine "$@"

