#!/bin/bash
CONTAINERBUILD_PATH=$(realpath "$(dirname "${0}")")
echo "Container build path: ${CONTAINERBUILD_PATH}"

# shellcheck disable=SC1091
source "${CONTAINERBUILD_PATH}"/getenv

# Build cache directory that survives the "docker system prune" at the end of every build.
# Fixed path, group docker: the buildkit daemon (root) writes, any docker user reads and inspects
CACHE_DIR=${BBXB_CACHE_DIR:-/var/cache/bbcrossbuild-docker}
mkdir -pv "${CACHE_DIR}" 2>/dev/null || sudo mkdir -pv "${CACHE_DIR}"
sudo chgrp docker "${CACHE_DIR}" 2>/dev/null || true
sudo chmod 2775 "${CACHE_DIR}" 2>/dev/null || true

case "${1}" in
	base) sudo docker build --target base --cache-to type=local,dest="${CACHE_DIR}" -t "${CONTAINER_NAME}-base" "${CONTAINERBUILD_PATH}/../.." ;;
	*) sudo docker build --cache-from type=local,src="${CACHE_DIR}" -t "${CONTAINER_NAME}" "${CONTAINERBUILD_PATH}/../.." ;;
esac

sudo docker system prune -f
