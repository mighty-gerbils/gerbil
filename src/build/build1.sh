#!/usr/bin/env bash
set -eu

## preconditions
if [ -z "${GERBIL_SETUP+x}" ]; then
  (1>&2 echo "ERROR: Do not call this script directly.") && exit 1
fi
source "${BUILD_DIR}/common.sh"
source "${BUILD_DIR}/build_common.sh"

## handling script arguments
readonly final_string="[final]"
if [[ "xfinal" = "x${1:-}" ]]; then
    # if final stage, install directly to 'GERBIL_BASE'
    readonly GERBIL_TARGET="${GERBIL_BASE}"
    readonly final="1"
else
    readonly GERBIL_TARGET="${GERBIL_BASE}/bootstrap/stage1"
    readonly final=""
fi

## constants
readonly TARGET_BIN="${GERBIL_TARGET}/bin"
readonly TARGET_LIB="${GERBIL_TARGET}/lib"
readonly TARGET_LIB_GERBIL="${GERBIL_TARGET}/lib/gerbil"
readonly TARGET_LIB_STATIC="${GERBIL_TARGET}/lib/static"

## feedback
feedback_low "Building gerbil stage1 ${final:+${final_string}}"

## preparing target directory
feedback_mid "preparing ${GERBIL_TARGET}"
target_setup "${GERBIL_TARGET}"

## gerbil runtime
feedback_mid "compiling runtime"
compile_runtime "${TARGET_LIB}"

## stage1 build
feedback_mid "preparing core build"
mkdir -p "${TARGET_LIB_GERBIL}"
cp -v gerbil/prelude/core.ssxi.ss "${TARGET_LIB_GERBIL}"
mkdir -p "${TARGET_LIB_STATIC}"
cp -v gerbil/runtime/gx-gambc*.scm "${TARGET_LIB_STATIC}"
cp -v gerbil/runtime/gx-version.scm "${TARGET_LIB_STATIC}"

feedback_mid "compiling gerbil core"
export GERBIL_HOME="${GERBIL_BASE}/bootstrap/stage0" # required by gxi-script
export GERBIL_TARGET # required by build1.ss
"${GERBIL_BASE}/bootstrap/stage0/bin/gxi-script" \
  "${BUILD_DIR}/build1.ss" || die

## finalize build
feedback_mid "finalizing build ${final:+${final_string}}"
finalize_build "${TARGET_LIB}" "${TARGET_BIN}"

## clean up bootstrap
if [ -n "${final}" ]; then
  feedback_low "Cleaning up bootstrap"
  rm -rf "${GERBIL_BASE}/bootstrap/stage0/"*
  rm -rf "${GERBIL_BASE}/bootstrap/stage1/"*
  touch "${GERBIL_BASE}/bootstrap/stage0/.keep"
  touch "${GERBIL_BASE}/bootstrap/stage1/.keep"
  touch "${GERBIL_BASE}/bin/.keep"
  touch "${GERBIL_BASE}/lib/.keep"
fi
