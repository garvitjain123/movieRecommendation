#!/bin/bash

##Sript to remove all things from the environment

docker container prune -f

docker image rm backend

docker image prune -f

rm -rdf ./App/

rm Dockerfile

rm docker-compose.yml

