#!/bin/bash

CONTAINERBUILD_PATH=$(realpath "$(dirname "${0}")")
echo "Container build path: ${CONTAINERBUILD_PATH}"

# shellcheck disable=SC1091
source "${CONTAINERBUILD_PATH}"/getenv

HOST_DATA_PATH=${HOST_DATA_PATH:-/mnt/bbcrossbuild/datadir}

if [ ! -d "${HOST_DATA_PATH}" ]
then
    mkdir -pv "${HOST_DATA_PATH}"
fi

#docker build -t "${CONTAINER_NAME}" "${CONTAINERBUILD_PATH}/../.."
set -x
sudo docker run -it -v \
    "${HOST_DATA_PATH}":/mnt/bbcrossbuild/datadir:Z \
    --privileged=true \
    ${@} \
    "${CONTAINER_NAME}"
