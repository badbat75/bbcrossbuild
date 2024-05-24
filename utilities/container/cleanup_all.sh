#!/bin/bash

docker ps -a -q | while IFS='' read -r line
do
    docker rm "$line"
done

docker system prune -a
