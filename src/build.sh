#!/usr/bin/env bash
set -eu

#===============================================================================
# Assuming this script is run with: `cd $GERBIL_BASE/src && ./build.sh`
#===============================================================================

## global setup
readonly GERBIL_SOURCE=$(pwd -P)
readonly GERBIL_BASE="$(dirname "${GERBIL_SOURCE}")"
readonly BUILD_DIR="${GERBIL_SOURCE}/build"

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
  # make sure 'target' expands to something: don't want to 'rm -rf /bin'
  rm -rf "${target:?}/"{bin,lib} 
  mkdir -p "${target}/"{bin,lib}
}

compile_runtime () {
  local target_lib="${1}"
  (cd gerbil/runtime && ./build.scm "${target_lib}")
}

finalize_build () {
  local target_lib="${1}"
  local target_bin="${2}"
  cp -v gerbil/boot/*.scm "${target_lib}"
  cp -v gerbil/interactive/*.ss "${target_lib}"
  cp -v gerbil/gxi gerbil/gxc gerbil/gxi-build-script "${target_bin}"
  (cd "${target_bin}" && ln -s gxi gxi-script)
}

stage0 () {
  local gerbil_target="${GERBIL_BASE}/bootstrap/stage0"
  local target_bin="${gerbil_target}/bin"
  local target_lib="${gerbil_target}/lib"
  
  ## feedback
  feedback_low "Building gerbil stage0"
  
  ## preparing target directory
  feedback_mid "preparing ${gerbil_target}"
  target_setup "${gerbil_target}"
  
  ## gerbil runtime
  feedback_mid "compiling runtime"
  compile_runtime "${target_lib}"
  
  ## gerbil bootstrap
  feedback_mid "preparing bootstrap"
  rsync -auv bootstrap/gerbil "${target_lib}"
  find "${target_lib}" -name \*.scm > .build.stage0
  
  feedback_mid "compiling gerbil core"
  gsi "${BUILD_DIR}/build0.scm" || die
  
  ## cleaning up
  rm -f .build.stage0
  
  ## finalize build
  feedback_mid "finalizing build"
  finalize_build "${target_lib}" "${target_bin}"
}

stage1 () {
  ## handling script arguments
  readonly final_string="[final]"
  if [[ "xfinal" = "x${1:-}" ]]; then
      # if final stage, install directly to 'GERBIL_BASE'
      local gerbil_target="${GERBIL_BASE}"
      local final="1"
  else
      local gerbil_target="${GERBIL_BASE}/bootstrap/stage1"
      local final=""
  fi
  
  ## constants
  local target_bin="${gerbil_target}/bin"
  local target_lib="${gerbil_target}/lib"
  local target_lib_gerbil="${gerbil_target}/lib/gerbil"
  local target_lib_static="${gerbil_target}/lib/static"
  
  ## feedback
  feedback_low "Building gerbil stage1 ${final:+${final_string}}"
  
  ## preparing target directory
  feedback_mid "preparing ${gerbil_target}"
  target_setup "${gerbil_target}"
  
  ## gerbil runtime
  feedback_mid "compiling runtime"
  compile_runtime "${target_lib}"
  
  ## stage1 build
  feedback_mid "preparing core build"
  mkdir -p "${target_lib_gerbil}"
  cp -v gerbil/prelude/core.ssxi.ss "${target_lib_gerbil}"
  mkdir -p "${target_lib_static}"
  cp -v gerbil/runtime/gx-gambc*.scm "${target_lib_static}"
  cp -v gerbil/runtime/gx-version.scm "${target_lib_static}"
  
  feedback_mid "compiling gerbil core"
  export GERBIL_HOME="${GERBIL_BASE}/bootstrap/stage0" # required by gxi-script
  export GERBIL_TARGET="${gerbil_target}" # required by build1.ss
  "${GERBIL_BASE}/bootstrap/stage0/bin/gxi-script" \
    "${BUILD_DIR}/build1.ss" || die
  
  ## finalize build
  feedback_mid "finalizing build ${final:+${final_string}}"
  finalize_build "${target_lib}" "${target_bin}"
  
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
}

## commands
build_tools () {
  feedback_low "Building gerbil tools"
  # just the gxprof script for now, which we copy
  cp -v tools/gxprof "${GERBIL_BASE}/bin"
}

build_stdlib () {
  feedback_low "Building gerbil stdlib"
  #local old_path="${PATH}"
  export PATH="${GERBIL_BASE}/bin:${PATH}"
  export GERBIL_HOME="${GERBIL_BASE}" #required by gxi-build-script and build.ss
  (cd std && ./build-deps-gen.ss  && ./build.ss)
}

build_lang () {
  feedback_low "Building gerbil languages"
  export PATH="${GERBIL_BASE}/bin:${PATH}"
  export GERBIL_HOME="${GERBIL_BASE}" #required by build.ss
  (cd lang && ./build.ss)
}

#===============================================================================
## main
build_gerbil() {
  feedback_low "Building Gerbil"
  stage0       || die
  stage1 final || die
  build_stdlib || die
  build_lang   || die
  build_tools  || die
}

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
       *)
         feedback_err "Unknown command."
         feedback_err "Correct usage: ./build.sh [stdlib|lang|tools]"
         die
         ;;
  esac
fi
feedback_low "Done"
