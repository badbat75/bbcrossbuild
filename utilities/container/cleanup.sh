#!/bin/bash

docker ps -a -q | while IFS='' read -r line
do
    docker rm "$line"
done

case "${1}" in
    all) docker system prune -a ;;
esac
