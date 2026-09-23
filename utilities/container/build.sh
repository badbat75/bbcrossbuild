#!/bin/bash
# Build the container image of this checkout and export the build cache of the dnf layer, which
# survives the "docker system prune" below. "bbxb --container" builds the image by itself when it
# is missing or out of date, importing this cache: this script is the way to refresh both.

BB_HOME=$(realpath "$(dirname "${0}")/../..")

# shellcheck source=/dev/null
source "${BB_HOME}/seterr"
# shellcheck source=/dev/null
source "${BB_HOME}/core.functions"
# shellcheck source=/dev/null
source "${BB_HOME}/container.functions"

# Fixed path, group docker: the buildkit daemon (root) writes, any docker user reads and inspects
mkdir -pv "${CONTAINER_CACHE_PATH}" 2>/dev/null || sudo mkdir -pv "${CONTAINER_CACHE_PATH}"
sudo chgrp docker "${CONTAINER_CACHE_PATH}" 2>/dev/null || true
sudo chmod 2775 "${CONTAINER_CACHE_PATH}" 2>/dev/null || true

container_image --force --cache-export || exit ${?}

docker system prune -f
