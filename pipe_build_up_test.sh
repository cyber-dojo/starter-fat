#!/bin/bash
set -e

readonly ROOT_DIR="$( cd "$( dirname "${0}" )" && pwd )"
readonly MY_NAME=starter-fat
readonly SH_DIR="${ROOT_DIR}/sh"

"${SH_DIR}/build_docker_images.sh"
