#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

WORKSPACE=/home/ec2-user/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm  -v  $WORKSPACE/simple-java-maven-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
