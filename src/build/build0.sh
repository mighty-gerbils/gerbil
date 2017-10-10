#!/usr/bin/env bash
set -eu

#===============================================================================
# note: not exporting 'GERBIL_TARGET'. is it needed?
#===============================================================================

## preconditions
if [ -z "${GERBIL_SETUP+x}" ]; then
  (1>&2 echo "ERROR: Do not call this script directly.") && exit 1
fi
source "${BUILD_DIR}/common.sh"
source "${BUILD_DIR}/build_common.sh"

## constants
readonly GERBIL_TARGET="${GERBIL_BASE}/bootstrap/stage0"
readonly TARGET_BIN="${GERBIL_TARGET}/bin"
readonly TARGET_LIB="${GERBIL_TARGET}/lib"

## feedback
feedback_low "Building gerbil stage0"

## preparing target directory
feedback_mid "preparing ${GERBIL_TARGET}"
target_setup "${GERBIL_TARGET}"

## gerbil runtime
feedback_mid "compiling runtime"
compile_runtime "${TARGET_LIB}"

## gerbil bootstrap
feedback_mid "preparing bootstrap"
rsync -auv bootstrap/gerbil "${TARGET_LIB}"
find "${TARGET_LIB}" -name \*.scm > .build.stage0

feedback_mid "compiling gerbil core"
gsi "${BUILD_DIR}/build0.scm" || die

## cleaning up
rm -f .build.stage0

## finalize build
feedback_mid "finalizing build"
finalize_build "${TARGET_LIB}" "${TARGET_BIN}"
