#!/usr/bin/env bash

#build and start docker-compose
docker-compose -f ./docker-compose.yml up -d --build

#build project
containername=debug
docker exec -i $containername ./run.sh