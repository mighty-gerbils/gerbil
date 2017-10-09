#!/usr/bin/env bash
set -eu

## preconditions
if [ -z "${GERBIL_SETUP+x}" ]; then
  (1>&2 echo "ERROR: Do not call this script directly.") && exit 1
fi
source "${BUILD_SCRIPT_DIR}/common.sh"

## main
feedback_low "Cleaning up bootstrap"
rm -rf "${GERBIL_BASE}/bootstrap/stage0/"*
rm -rf "${GERBIL_BASE}/bootstrap/stage1/"*
touch "${GERBIL_BASE}/bootstrap/stage0/.keep"
touch "${GERBIL_BASE}/bootstrap/stage1/.keep"
touch "${GERBIL_BASE}/bin/.keep"
touch "${GERBIL_BASE}/lib/.keep"

