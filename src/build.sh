#!/bin/sh
set -eu
cd $(dirname "$0") # Change to this directory

#===============================================================================
# Assuming this script is run with: `cd $GERBIL_BASE/src && ./build.sh`
#===============================================================================

# Check for GERBIL_PREFIX being set
# This is necessary for the bach build script to set the correct RUNPATH in the
# gerbil binary.
if [ "x${GERBIL_PREFIX:-}" = "x" ]; then
    echo "GERBIL_PREFIX is not set"
    exit 1
fi

## global constants
readonly GERBIL_SOURCE="$(pwd -P)"
readonly GERBIL_BASE="$(dirname "${GERBIL_SOURCE}")"
readonly GERBIL_STAGE0="${GERBIL_BASE}/bootstrap"

## Build Environment
GERBIL_BUILD_PREFIX="${GERBIL_BASE}/build"
export GERBIL_BUILD_PREFIX

GERBIL_LOADPATH="${GERBIL_BUILD_PREFIX}/lib"
export GERBIL_LOADPATH

GAMBOPT="~~bin=${GERBIL_BUILD_PREFIX}/bin,~~lib=${GERBIL_BUILD_PREFIX}/lib,~~include=${GERBIL_BUILD_PREFIX}/include"
export GAMBOPT

PATH="${GERBIL_BUILD_PREFIX}/bin:${PATH}"
export PATH

# required when --enable-shared
if [ "x${LD_LIBRARY_PATH:-}" = "x" ]; then
    LD_LIBRARY_PATH="${GERBIL_BUILD_PREFIX}/lib"
else
    LD_LIBRARY_PATH="${GERBIL_BUILD_PREFIX}/lib:${LD_LIBRARY_PATH}"
fi
export LD_LIBRARY_PATH

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

target_setup() {
  local target="${1}"
  rm -rf "${target:?}/bin"  # warning: `:?` necessary for safety
  rm -rf "${target:?}/lib"  # warning: `:?` necessary for safety
  mkdir -p "${target}/bin"
  mkdir -p "${target}/lib"
  mkdir -p "${target}/include"
}

build_prepare() {
  feedback_mid "Preparing build"
  feedback_low "preparing ${GERBIL_STAGE0}"
  target_setup "${GERBIL_STAGE0}"
  feedback_low "preparing ${GERBIL_BUILD_PREFIX}"
  target_setup "${GERBIL_BUILD_PREFIX}"
}

build_gambit() {
  feedback_low "Building Gambit in ${GERBIL_BUILD_PREFIX}/gambit"
  feedback_mid "Building core gambit"
  (cd gambit && make -j ${GERBIL_BUILD_CORES:-1} core) || die

  feedback_mid "Installing Gambit to ${GERBIL_BUILD_PREFIX}"
  cp -v gambit/gsi/gsi "${GERBIL_STAGE0}/bin"
  cp -v gambit/gsc/gsc gambit/bin/gambuild-C "${GERBIL_BUILD_PREFIX}/bin"
  cp -v gambit/include/gambit.h gambit/include/gambit-not*.h "${GERBIL_BUILD_PREFIX}/include"
  cp -v gambit/lib/*\#.scm "${GERBIL_BUILD_PREFIX}/lib"
  cp -v gambit/lib/_define-syntax.scm "${GERBIL_BUILD_PREFIX}/lib"
  cp -v gambit/gsc/*\#.scm "${GERBIL_BUILD_PREFIX}/lib"
  cp -v gambit/lib/_gambit.c "${GERBIL_BUILD_PREFIX}/lib"
  for f in lib/libgambit.so lib/libgambit.a \
           gsi/libgambitgsi.so gsi/libgambitgsi.a \
           gsc/libgambitgsc.so gsc/libgambitgsc.a;
  do
      if [ -e gambit/$f ]; then
          cp -v gambit/$f "${GERBIL_BUILD_PREFIX}/lib"
      fi
  done
}

build_boot_gxi () {
  feedback_low "Compiling bootstrap gxi shim"
  (cd gerbil && ${CC:-cc} -O2 -o boot-gxi boot-gxi.c)
}

compile_runtime () {
  local target_lib="${1}"
  (cd gerbil/runtime && ./build.scm "${target_lib}")
}

finalize_stage0 () {
  local target_lib="${1}"
  local target_bin="${2}"
  cp -v gerbil/boot/*.scm \
     "${target_lib}"
  cp -v gerbil/boot-gxi \
     "${target_bin}"
}

clean_stage0() {
  ## clean up stage0
  feedback_low "Cleaning up bootstrap"
  rm -rf "${GERBIL_STAGE0}"
}

finalize_stage1 () {
  local target_lib="${1}"
  local target_bin="${2}"
  cp -v gerbil/interactive/*.ss \
     "${target_lib}"
  (cd "${target_bin}" && ln -sf gerbil gxi)
  (cd "${target_bin}" && ln -sf gerbil gxc)
}

build_stage0 () {
  local target_bin="${GERBIL_STAGE0}/bin"
  local target_lib="${GERBIL_STAGE0}/lib"

  ## feedback
  feedback_low "Building gerbil stage0 (bootstrap)"

  ## gerbil runtime
  feedback_mid "compiling runtime"
  compile_runtime "${target_lib}"

  ## gerbil bootstrap
  feedback_mid "preparing bootstrap"
  cp -R bootstrap/gerbil "${target_lib}"
  find "${target_lib}" -name \*.scm > .build.stage0

  feedback_mid "compiling bootstrap gerbil"
  gsi ./build/build0.scm || die

  ## cleaning up
  rm -f .build.stage0

  ## finalize build
  feedback_mid "finalizing bootstrap"
  finalize_stage0 "${target_lib}" "${target_bin}"
}

build_stage1 () {
  ## constants
  local target_bin="${GERBIL_BUILD_PREFIX}/bin"
  local target_lib="${GERBIL_BUILD_PREFIX}/lib"
  local target_lib_gerbil="${GERBIL_BUILD_PREFIX}/lib/gerbil"
  local target_lib_static="${GERBIL_BUILD_PREFIX}/lib/static"

  ## feedback
  feedback_low "Building gerbil stage1"

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

  GERBIL_HOME="${GERBIL_STAGE0}" # required by boot-gxi
  export GERBIL_HOME

  feedback_mid "compiling gerbil core"
  PATH="${GERBIL_STAGE0}/bin:$PATH" "${GERBIL_STAGE0}/bin/boot-gxi" ./build/build1.ss || die

  feedback_mid "compiling gerbil bach"
  PATH="${GERBIL_STAGE0}/bin:$PATH" "${GERBIL_STAGE0}/bin/boot-gxi" ./build/build-bach.ss || die

  ## unset GERBIL_HOME from its bootstrap value to avoid confusing the rest of the build
  unset GERBIL_HOME

  ## finalize build
  feedback_mid "finalizing build ${final:+${final_string}}"
  finalize_stage1 "${target_lib}" "${target_bin}"
}

## commands
build_stdlib () {
  feedback_low "Building gerbil stdlib"
  (cd std && ./build.ss)
}

build_libgerbil () {
  feedback_low "Building libgerbil"
  ./build/build-libgerbil.ss || die
}

build_lang () {
  feedback_low "Building gerbil languages"
  (cd lang && ./build.ss)
}

build_r7rs_large() {
  feedback_low "Building R7RS large"
  (cd r7rs-large && ./build.ss)
}

build_tools () {
  feedback_low "Building gerbil tools"
  (cd tools && ./build.ss)
  for tool in tools/gx*.ss; do
      toolname=$(basename $tool .ss)
      (cd "${GERBIL_BUILD_PREFIX}/bin" && ln -sf gerbil $toolname)
  done
}

build_tags () {
  feedback_low "Build gerbil tags"
  gxtags gerbil std lang
}

build_doc () {
  feedback_low "Build gerbil docs"
  (cd "${GERBIL_BASE}/doc" && npm install && node_modules/vuepress/cli.js dev)
}

#===============================================================================
## main
build_gerbil() {
  feedback_low "Building Gerbil"
  build_prepare    || die
  build_gambit     || die
  build_boot_gxi   || die
  build_stage0     || die
  build_stage1     || die
  build_stdlib     || die
  build_libgerbil  || die
  build_lang       || die
  build_r7rs_large || die
  build_tools      || die
  build_tags       || die
}

## handling command line
if [ "$#" -eq 0 ]; then
  build_gerbil
else
  case "$1" in
      "prepare")
         build_prepare || die
         ;;
      "gambit")
         build_gambit || die
         ;;
      "boot-gxi")
         build_boot_gxi || die
         ;;
       "stage0")
         build_stage0 || die
         ;;
       "stage1")
         build_stage1 || die
         ;;
       "stdlib")
         build_stdlib || die
         ;;
       "libgerbil")
         build_libgerbil || die
         ;;
       "lang")
         build_lang || die
         ;;
       "r7rs-large")
         build_r7rs_large || die
         ;;
       "tools")
         build_tools || die
         ;;
       "tags")
         build_tags || die
         ;;
       "doc")
         build_doc || die
         ;;
       *)
         feedback_err "Unknown command."
         feedback_err \
           "Correct usage: ./build.sh [prepare|gambit|boot-gxi|stage0|stage1|stdlib|libgerbil|lang|r7rs-large|tools|tags]"
         die
         ;;
  esac
fi
feedback_low "Done"
