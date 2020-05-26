#!/bin/bash
docker-compose -p front up --force-recreate -V --build --detach
docker network inspect front_front | jq ". | first | .Containers"
