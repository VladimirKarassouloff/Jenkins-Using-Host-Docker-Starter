#!/bin/bash
NAME=vladimirkarassouloff/jenkins-docker-host

docker build . --tag $NAME
docker push $NAME

DEFAULT_PORT="8081"
NAME="jenkins"

COMMAND="docker run -p $DEFAULT_PORT:8080 -v /var/jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock --name $NAME vladimirkarassouloff/jenkins-docker-host"
echo "You can now execute following command $COMMAND"