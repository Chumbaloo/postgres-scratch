#!/bin/bash
# set -euo pipefail

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker container rm $(docker container ps -aq)
docker rm -vf $(docker ps -a -q)
docker rmi -f $(docker images -a -q)
docker system prune -f