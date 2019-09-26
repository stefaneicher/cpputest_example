#!/usr/bin/env bash
containername=debug

#docker exec -i debug echo "I'm inside the container!"
docker exec -i $containername echo "I'm inside the container!"
docker exec -i $containername ./run.sh