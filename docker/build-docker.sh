#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-maxeter/maxeterd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/maxeterd docker/bin/
cp $BUILD_DIR/src/maxeter-cli docker/bin/
cp $BUILD_DIR/src/maxeter-tx docker/bin/
strip docker/bin/maxeterd
strip docker/bin/maxeter-cli
strip docker/bin/maxeter-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
