#!/bin/bash
CONTAINERBUILD_PATH=$(realpath "$(dirname "${0}")")
echo "Container build path: ${CONTAINERBUILD_PATH}"

# shellcheck disable=SC1091
source "${CONTAINERBUILD_PATH}"/getenv


case "${1}" in
	base) sudo docker build --target base -t "${CONTAINER_NAME}-base" "${CONTAINERBUILD_PATH}/../.." ;;
	*) sudo docker build --cache-from "${CONTAINER_NAME}-base" -t "${CONTAINER_NAME}" "${CONTAINERBUILD_PATH}/../.." ;;
esac

sudo docker system prune -f
