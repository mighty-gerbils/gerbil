#!/bin/sh
set -eu
cd $(dirname "$0") # Change to this directory

#===============================================================================
# Assuming this script is run with: `cd $GERBIL_BASE/src && ./build.sh`
#===============================================================================

# utility to get number of cores from make -j
build_flags_cores() {
    for x in $1; do
        case $x in
            -j*)
                echo ${x##-j}
                break
                ;;
            *)
                ;;
        esac
    done
}

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

export GERBIL_SOURCE GERBIL_STAGE0

## Build Environment
GERBIL_BUILD_PREFIX="${GERBIL_BASE}/build"
export GERBIL_BUILD_PREFIX

GERBIL_GSC="${GERBIL_BUILD_PREFIX}/bin/gsc"
export GERBIL_GSC

GERBIL_LOADPATH="${GERBIL_BUILD_PREFIX}/lib"
export GERBIL_LOADPATH

GAMBOPT="~~bin=${GERBIL_BUILD_PREFIX}/bin,~~lib=${GERBIL_BUILD_PREFIX}/lib,~~include=${GERBIL_BUILD_PREFIX}/include"
export GAMBOPT

PATH="${GERBIL_BUILD_PREFIX}/bin:${GERBIL_STAGE0}/bin:${PATH}"
export PATH

# required when --enable-shared
if [ "x${LD_LIBRARY_PATH:-}" = "x" ]; then
    LD_LIBRARY_PATH="${GERBIL_BUILD_PREFIX}/lib"
else
    LD_LIBRARY_PATH="${GERBIL_BUILD_PREFIX}/lib:${LD_LIBRARY_PATH}"
fi

DYLD_LIBRARY_PATH="$LD_LIBRARY_PATH"
DYLD_FALLBACK_LIBRARY_PATH="$LD_LIBRARY_PATH"

export LD_LIBRARY_PATH DYLD_LIBRARY_PATH DYLD_FALLBACK_LIBRARY_PATH

if [ "x${GERBIL_BUILD_FLAGS:-}" != "x" ]; then
    num_cores=$(build_flags_cores "${GERBIL_BUILD_FLAGS}")
    if [ "x${num_cores:-}" != "x" ]; then
        GERBIL_BUILD_CORES=${num_cores}
        export GERBIL_BUILD_CORES
    fi
fi

if [ "x${GERBIL_BUILD_CORES:-}" != "x" ]; then
    echo "--- using ${GERBIL_BUILD_CORES} cores for the build"
fi

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
  local exitcode=$?
  feedback_err "build failed"
  exit $exitcode
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
  (cd gambit && rm -rf boot gsc-boot) || die
  (cd gambit && m="make -j ${GERBIL_BUILD_CORES:-1}" && $m bootstrap && $m from-scratch)

  feedback_mid "Installing Gambit to ${GERBIL_BUILD_PREFIX}"
  cp -v gambit/gsi/gsi "${GERBIL_STAGE0}/bin"
  cp -v gambit/gsc/gsc gambit/bin/gambuild-C "${GERBIL_BUILD_PREFIX}/bin"
  cp -v gambit/include/gambit.h gambit/include/gambit-not*.h "${GERBIL_BUILD_PREFIX}/include"
  cp -v gambit/lib/*\#.scm "${GERBIL_BUILD_PREFIX}/lib"
  cp -v gambit/lib/_define-syntax.scm "${GERBIL_BUILD_PREFIX}/lib"
  cp -v gambit/gsc/*\#.scm "${GERBIL_BUILD_PREFIX}/lib"
  cp -v gambit/lib/_gambit.c "${GERBIL_BUILD_PREFIX}/lib"
  for f in lib/libgambit.so lib/libgambit.a lib/libgambit.dylib\
           gsi/libgambitgsi.so gsi/libgambitgsi.a  gsi/libgambitgsi.dylib\
           gsc/libgambitgsc.so gsc/libgambitgsc.a gsc/libgambitgsc.dylib;
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
  feedback_low "Building Gerbil bootstrap"

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
  feedback_low "Building Gerbil core"

  ## stage1 build
  feedback_mid "preparing core build"
  mkdir -p "${target_lib_gerbil}"
  cp -v gerbil/builtin.ssxi.ss gerbil/builtin-inline-rules.ssxi.ss "${target_lib_gerbil}"
  mkdir -p "${target_lib_static}"

  feedback_mid "updating gerbil version"
  gsi ./build/build-version.scm || die

  GERBIL_HOME="${GERBIL_STAGE0}" # required by boot-gxi
  export GERBIL_HOME

  feedback_mid "compiling gerbil core"
  "${GERBIL_STAGE0}/bin/boot-gxi" ./build/build1.ss || die

  feedback_mid "compiling gerbil bach"
  "${GERBIL_STAGE0}/bin/boot-gxi" ./build/build-bach.ss || die

  ## unset GERBIL_HOME from its bootstrap value to avoid confusing the rest of the build
  unset GERBIL_HOME

  ## finalize build
  feedback_mid "finalizing build ${final:+${final_string}}"
  finalize_stage1 "${target_lib}" "${target_bin}"
}

## commands
build_stdlib () {
  feedback_low "Building stdlib"
  (cd std && gxi ./build.ss) || die
}

build_libgerbil () {
  feedback_low "Building libgerbil"
  gxi ./build/build-libgerbil.ss || die
}

build_lang () {
  feedback_low "Building languages"
  (cd lang && gxi ./build.ss) || die
}

build_r7rs_large() {
  feedback_low "Building R7RS large"
  (cd r7rs-large && gxi ./build.ss) || die
}

build_srfi() {
    feedback_low "Building SRFI shims"
    (cd srfi && gxi ./build.ss) || die
}

build_tools () {
  feedback_low "Building gerbil tools"
  (cd tools && gxi ./build.ss) || die
  for tool in tools/gx*.ss; do
      toolname=$(basename $tool .ss)
      (cd "${GERBIL_BUILD_PREFIX}/bin" && ln -sf gerbil $toolname)
  done
}

build_tags () {
  feedback_low "Building gerbil TAGS"
  gxtags gerbil std lang
}

build_doc () {
  feedback_low "Building gerbil hyperspec"
  (## For now we only support old node v18 with this option.
   ## TODO: update node support to a modern node with a modern SSL module.
   export NODE_OPTIONS=--openssl-legacy-provider
   cd "${GERBIL_BASE}/doc" &&
   npm install &&
   node_modules/vuepress/cli.js dev)
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
  build_srfi       || die
  build_tools      || die
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
       "srfi")
         build_srfi || die
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
       "env")
           $*
         ;;
       *)
         feedback_err "Unknown command."
         feedback_err \
           "Correct usage: ./build.sh [prepare|gambit|boot-gxi|stage0|stage1|stdlib|libgerbil|lang|r7rs-large|srfi|tools|tags]"
         die
         ;;
  esac
fi
feedback_low "Done"
