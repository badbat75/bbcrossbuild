#!/bin/bash
CONTAINERBUILD_PATH=$(realpath "$(dirname "${0}")")
echo "Container build path: ${CONTAINERBUILD_PATH}"

# shellcheck disable=SC1091
source "${CONTAINERBUILD_PATH}"/getenv

docker build -t "${CONTAINER_NAME}" "${CONTAINERBUILD_PATH}/../.."
docker system prune -f
