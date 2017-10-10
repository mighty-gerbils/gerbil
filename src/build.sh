#!/usr/bin/env bash
set -eu

#===============================================================================
# Assuming this script is run with: `cd $GERBIL_BASE/src && ./build.sh`
# All other build scripts depend on this point of entry
#===============================================================================

## global (for all build scripts) setup
readonly GERBIL_SOURCE=$(pwd -P)
readonly GERBIL_BASE="$(dirname "${GERBIL_SOURCE}")"
readonly BUILD_DIR="${GERBIL_SOURCE}/build"
readonly GERBIL_SETUP="" # this flag signals that basic setup has occured

export GERBIL_SOURCE
export GERBIL_BASE
export BUILD_DIR
export GERBIL_SETUP

## common
source "${BUILD_DIR}/common.sh"

## main
build_gerbil() {
  "${BUILD_DIR}/build0.sh"       || die
  "${BUILD_DIR}/build1.sh" final || die
  #"${BUILD_DIR}/build2_fini.sh"
  "${BUILD_DIR}/build_stdlib.sh" || die
  "${BUILD_DIR}/build_lang.sh"   || die
  "${BUILD_DIR}/build_tools.sh"  || die
}

## handling command line
if [ -z "${1+x}" ]; then
  feedback_low "Building Gerbil"
  build_gerbil
  feedback_low "Done"
else
  case "$1" in
       "stdlib")
         "${BUILD_DIR}/build_stdlib.sh" || die
         ;;
       "lang")
         "${BUILD_DIR}/build_lang.sh" || die
         ;;
       "tools")
         "${BUILD_DIR}/build_tools.sh" || die
         ;;
       *)
         feedback_err "Incorrect command line usage"
         die
         ;;
  esac
fi
 
