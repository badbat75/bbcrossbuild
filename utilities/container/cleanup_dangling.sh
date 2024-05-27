#!/bin/bash

docker ps -a -f status=exited -q | while IFS='' read -r line
do
    docker rm "${line}"
done

docker images -f dangling=true -q | while IFS='' read -r line
do
    docker rmi "${line}"
done
