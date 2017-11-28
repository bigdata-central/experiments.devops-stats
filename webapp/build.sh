#!/bin/bash

TAG_APP=devops-stats/webapp:latest

docker build -f Dockerfile -t $TAG_APP .
