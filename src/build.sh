#!/usr/bin/env bash
set -eu

#===============================================================================
# This script must be run with: `cd $GERBIL_BASE/src && ./build.sh`
#===============================================================================

## global constants
readonly GERBIL_SOURCE="$(pwd -P)"
readonly GERBIL_BASE="$(dirname "${GERBIL_SOURCE}")"
readonly GERBIL_BUILD="${GERBIL_SOURCE}/build"
readonly GERBIL_STAGE0="${GERBIL_BASE}/bootstrap"
readonly GERBIL_CONFIG="${GERBIL_SOURCE}/conf.sh"

#===============================================================================
## feedback
feedback_err() {
  (1>&2 echo "*** ERROR; ${1}")
}

feedback_low() {
  echo "[*] ${1}"
}

feedback_mid() {
  echo ">>> ${1}"
}

die() {
  feedback_err "build failed"
  exit 1
}

## bootstrap
target_setup () {
  local target="${1}"
  rm -rf "${target:?}/"{bin,lib}  # warning: `:?` necessary for safety
  mkdir -p "${target}/"{bin,lib}
}

compile_runtime () {
  local target_lib="${1}"
  (cd gerbil/runtime && "${GERBIL_GSI}" build.scm "${target_lib}")
}

finalize_build () {
  local target_lib="${1}"
  local target_bin="${2}"
  cp -v gerbil/boot/*.scm \
        gerbil/interactive/*.ss \
        "${GERBIL_CONFIG}" \
        "${target_lib}"
  cp -v gerbil/gxi \
        gerbil/gxc \
        "${target_bin}"
  (cd "${target_bin}" && ln -s gxi gxi-script)
}

stage0 () {
  local target_bin="${GERBIL_STAGE0}/bin"
  local target_lib="${GERBIL_STAGE0}/lib"
  
  ## feedback
  feedback_low "Building gerbil stage0"
  
  ## preparing target directory
  feedback_mid "preparing ${GERBIL_STAGE0}"
  target_setup "${GERBIL_STAGE0}"
  
  ## gerbil runtime
  feedback_mid "compiling runtime"
  compile_runtime "${target_lib}"
  
  ## gerbil bootstrap
  feedback_mid "preparing bootstrap"
  rsync -auv bootstrap/gerbil "${target_lib}"
  find "${target_lib}" -name \*.scm > .build.stage0
  
  feedback_mid "compiling gerbil core"
  "${GERBIL_GSI}" "${GERBIL_BUILD}/build0.scm" || die
  
  ## cleaning up
  rm -f .build.stage0
  
  ## finalize build
  feedback_mid "finalizing build"
  finalize_build "${target_lib}" "${target_bin}"
}

stage1 () {
  ## handling arguments
  local final_string="[final]"
  local final=""
  [ "final" = "${1:-}" ] && final="1"
  
  ## constants
  local target_bin="${GERBIL_BASE}/bin"
  local target_lib="${GERBIL_BASE}/lib"
  local target_lib_gerbil="${GERBIL_BASE}/lib/gerbil"
  local target_lib_static="${GERBIL_BASE}/lib/static"
  
  ## feedback
  feedback_low "Building gerbil stage1 ${final:+${final_string}}"
  
  ## preparing target directory
  feedback_mid "preparing ${GERBIL_BASE}"
  target_setup "${GERBIL_BASE}"
  
  ## gerbil runtime
  feedback_mid "compiling runtime"
  compile_runtime "${target_lib}"
  
  ## stage1 build
  feedback_mid "preparing core build"
  mkdir -p "${target_lib_gerbil}"
  cp -v gerbil/prelude/core.ssxi.ss "${target_lib_gerbil}"
  mkdir -p "${target_lib_static}"
  cp -v gerbil/runtime/gx-gambc*.scm \
        gerbil/runtime/gx-version.scm \
        "${target_lib_static}"

  feedback_mid "compiling gerbil core"
  export GERBIL_HOME="${GERBIL_STAGE0}" # required by gxi-script
  export GERBIL_TARGET="${GERBIL_BASE}" # required by build1.ss
  "${GERBIL_STAGE0}/bin/gxi-script" "${GERBIL_BUILD}/build1.ss" || die
  
  ## finalize build
  feedback_mid "finalizing build ${final:+${final_string}}"
  finalize_build "${target_lib}" "${target_bin}"
  
  ## clean up stage0
  if [ -n "${final}" ]; then
    feedback_low "Cleaning up bootstrap"
    rm -rf "${GERBIL_STAGE0}"
  fi
}

## commands
build_tools () {
  feedback_low "Building gerbil tools"
  # just the gxprof script for now, which we copy
  cp -v tools/gxprof "${GERBIL_BASE}/bin"
}

build_stdlib () {
  feedback_low "Building gerbil stdlib"
  export PATH="${GERBIL_BASE}/bin:${PATH}"
  export GERBIL_HOME="${GERBIL_BASE}" #required by build.ss
  (cd std \
   && "${GERBIL_GSI}" -e '(include "~~lib/_gambit#.scm")' \
                      "${GERBIL_BASE}/lib/gxi-init" \
                      build-deps-gen.ss \
   && ./build.ss)
}

build_lang () {
  feedback_low "Building gerbil languages"
  export PATH="${GERBIL_BASE}/bin:${PATH}"
  export GERBIL_HOME="${GERBIL_BASE}" #required by build.ss
  (cd lang && ./build.ss)
}

build_gerbil() {
  feedback_low "Building Gerbil"
  stage0       || die
  stage1 final || die
  build_stdlib || die
  build_lang   || die
  build_tools  || die
}

## main
#===============================================================================
## load configuration file
source "${GERBIL_CONFIG}" || die

## handling command line
if [ -z "${1+x}" ]; then
  build_gerbil
else
  case "$1" in
       "stdlib")
         build_stdlib || die
         ;;
       "lang")
         build_lang || die
         ;;
       "tools")
         build_tools || die
         ;;
       "stage0")
         stage0 || die
         ;;
       "stage1")
         stage1 "${2:-}" || die
         ;;
       *)
         feedback_err "Unknown command."
         feedback_err \
           "Correct usage: ./build.sh [stdlib|lang|tools|stage0|stage1 [final]]"
         die
         ;;
  esac
fi
feedback_low "Done"
