#!/bin/bash
CONTAINERBUILD_PATH=$(realpath "$(dirname "${0}")")
echo "Container build path: ${CONTAINERBUILD_PATH}"

# shellcheck disable=SC1091
source "${CONTAINERBUILD_PATH}"/getenv

if [ ! -f "${CONTAINERBUILD_PATH}"/registry.conf ]
then
	echo "This program is not configured."
	cat >"${CONTAINERBUILD_PATH}"/registry.conf <<-EOF
		CONTAINER_USER=<username>
		CONTAINER_TOKEN=<password>
		CONTAINER_REGISTRY=<registry_dns>
	EOF
	echo "I just created an empty registry.conf. Please edit and configure it with your registry parameters."
	exit 1
fi

# shellcheck disable=SC1091
source "${CONTAINERBUILD_PATH}"/registry.conf

docker login -u "${CONTAINER_USER}" -p "${CONTAINER_TOKEN}" "${CONTAINER_REGISTRY}"
docker tag "${CONTAINER_NAME}" "${CONTAINER_REGISTRY}/${CONTAINER_NAME}"
docker push "${CONTAINER_REGISTRY}/${CONTAINER_NAME}"