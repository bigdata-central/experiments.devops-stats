#!/bin/bash
docker rm -f devops-stats-webapp
docker run -d --name=devops-stats-webapp -p 8081:80 devops-stats/webapp:latest
