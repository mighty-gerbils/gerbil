#!/usr/bin/env bash
set -eu

#===============================================================================
# Assuming this script is run with: `cd $GERBIL_BASE/src && ./build.sh`
# All other build scripts depend on this point of entry
#===============================================================================

## global (for all build scripts) setup
readonly GERBIL_SOURCE=$(pwd -P)
readonly GERBIL_BASE="$(dirname "${GERBIL_SOURCE}")"
readonly BUILD_SCRIPT_DIR="${GERBIL_SOURCE}/build_scripts"
readonly GERBIL_SETUP="" # this flag signals that basic setup has occured

export GERBIL_SOURCE
export GERBIL_BASE
export BUILD_SCRIPT_DIR
export GERBIL_SETUP

## common
source "${BUILD_SCRIPT_DIR}/common.sh"

## main
build_gerbil() {
    "${BUILD_SCRIPT_DIR}/build0.sh"       || die
    "${BUILD_SCRIPT_DIR}/build1.sh" final || die
    # TODO: if I understand correctly, 'final' should call the cleanup script
    "${BUILD_SCRIPT_DIR}/build2_fini.sh"
    "${BUILD_SCRIPT_DIR}/build_stdlib.sh" || die
    "${BUILD_SCRIPT_DIR}/build_lang.sh"   || die
    "${BUILD_SCRIPT_DIR}/build_tools.sh"  || die
}

feedback_low "Building Gerbil"
build_gerbil
feedback_low "Done"
