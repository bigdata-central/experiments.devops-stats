#!/bin/bash

VERSION_PYTHON=3.5
VERSION_CASSANDRA=3.12.0
TAG_DEV=sandbox-base
TAG_APP=sanbox

docker build --no-cache -f Dockerfile.base -t $TAG_DEV --build-arg python_version=$VERSION_PYTHON --build-arg driver_version=$VERSION_CASSANDRA   .
docker build -t $TAG_APP --build-arg base_tag=$TAG_DEV .
