#!/usr/bin/env bash

DOCKER_HUB_USERNAME=$1
DOCKER_HUB_PASSWORD=$2
DOCKER_HUB_REPOSITORY=$3
PACKAGE_VERSION=$4

docker build -t ${DOCKER_HUB_REPOSITORY}:${PACKAGE_VERSION} -t ${DOCKER_HUB_REPOSITORY} --build-arg JAVA_REPL_VERSION=${PACKAGE_VERSION} .
docker login -u=${DOCKER_HUB_USERNAME} -p=${DOCKER_HUB_PASSWORD};
docker push ${DOCKER_HUB_REPOSITORY}