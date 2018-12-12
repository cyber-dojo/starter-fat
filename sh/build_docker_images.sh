#!/bin/bash

readonly ROOT_DIR="$( cd "$( dirname "${0}" )" && cd .. && pwd )"

export SHA=$(cd "${ROOT_DIR}" && git rev-parse HEAD)

docker-compose \
  --verbose \
  --file "${ROOT_DIR}/docker-compose.yml" \
    build
