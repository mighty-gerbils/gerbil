#!/bin/sh
set -eu
cd $(dirname "$0") # Change to this directory

#===============================================================================
# Assuming this script is run with: `cd $GERBIL_BASE/src && ./build.sh`
#===============================================================================

## global constants
readonly GERBIL_SOURCE="$(pwd -P)"
readonly GERBIL_BASE="$(dirname "${GERBIL_SOURCE}")"
readonly GERBIL_BUILD="${GERBIL_SOURCE}/build"
readonly GERBIL_STAGE0="${GERBIL_BASE}/bootstrap"

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

## sanity check
sanity_check () {
  GSIV="$(gsi -v)"
  ## TODO: Get a buy-in from Marc Feeley on what good pattern would be there. Maybe a regexp via sed?
  #case "$GSIV" in v[4-9].[0-9].[0-9]*" "20[2-9][0-9][0-1][0-9][0-3][0-9][0-2][0-9][0-5][0-9][0-9][0-9]" "*" \""*"\"") : ok ;;
  #  *) echo >&2 "Is Gambit installed on your machine and in your PATH? Unrecognized version from gsi -v: $GSIV" ; return 1 ;;
  #esac
  GSCV="$(${GERBIL_GSC:-gsc} -v)"
  [ "$GSIV" = "$GSCV" ] || { echo >&2 "gsi -v and ${GERBIL_GSC:-gsc} -v fail to report matching versions. Please define a proper GERBIL_GSC. Would gsc be called gambitc or gsc-script on your system not to clash with GhostScript?" ; return 1; }
}

## bootstrap
target_setup () {
  local target="${1}"
  rm -rf "${target:?}/bin"  # warning: `:?` necessary for safety
  rm -rf "${target:?}/lib"  # warning: `:?` necessary for safety
  mkdir -p "${target}/bin"
  mkdir -p "${target}/lib"
}

compile_boot_gxi () {
  feedback_low "Compiling boot gxi shim"
  (cd gerbil && ${CC:-cc} -O2 -o boot-gxi boot-gxi.c)
}

compile_runtime () {
  local target_lib="${1}"
  (cd gerbil/runtime && ./build.scm "${target_lib}")
}

finalize_stage1 () {
  local target_lib="${1}"
  local target_bin="${2}"
  cp -v gerbil/boot/*.scm \
        gerbil/interactive/*.ss \
        "${target_lib}"
  (cd "${target_bin}" && ln -sv gerbil gxi)
  (cd "${target_bin}" && ln -sv gerbil gxc)
}

finalize_boot () {
  local target_lib="${1}"
  local target_bin="${2}"
  cp -v gerbil/boot/*.scm \
        gerbil/interactive/*.ss \
        "${target_lib}"
  cp -v gerbil/boot-gxi \
       "${target_bin}"
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
  cp -R bootstrap/gerbil "${target_lib}"
  find "${target_lib}" -name \*.scm > .build.stage0

  feedback_mid "compiling gerbil core"
  gsi "${GERBIL_BUILD}/build0.scm" || die

  ## cleaning up
  rm -f .build.stage0

  ## finalize build
  feedback_mid "finalizing build"
  finalize_boot "${target_lib}" "${target_bin}"
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
  touch "${GERBIL_BASE}/bin/.keep"
  touch "${GERBIL_BASE}/lib/.keep"

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

  GERBIL_HOME="${GERBIL_STAGE0}" # required by gxi
  GERBIL_TARGET="${GERBIL_BASE}" # required by build1.ss
  export GERBIL_HOME GERBIL_TARGET

  feedback_mid "compiling gerbil core"
  "${GERBIL_STAGE0}/bin/boot-gxi" "${GERBIL_BUILD}/build1.ss" || die

  feedback_mid "compiling gerbil bach"
  "${GERBIL_STAGE0}/bin/boot-gxi" "${GERBIL_BUILD}/build-bach.ss" || die

  ## finalize build
  feedback_mid "finalizing build ${final:+${final_string}}"
  finalize_stage1 "${target_lib}" "${target_bin}"

  ## clean up stage0
  if [ -n "${final}" ]; then
    feedback_low "Cleaning up bootstrap"
    rm -rf "${GERBIL_STAGE0}"
    mkdir "${GERBIL_STAGE0}"
    touch "${GERBIL_STAGE0}/.keep"
  fi
}

## commands
build_stdlib () {
  feedback_low "Building gerbil stdlib"
  PATH="${GERBIL_BASE}/bin:${PATH}"
  GERBIL_HOME="${GERBIL_BASE}" #required by build.ss
  GERBIL_GXC=gxc
  export PATH GERBIL_HOME GERBIL_GXC
  (cd std && ./build.ss)
}

build_libgerbil () {
  feedback_low "Building libgerbil"
  PATH="${GERBIL_BASE}/bin:${PATH}"
  GERBIL_HOME="${GERBIL_BASE}" #required for build
  export PATH GERBIL_HOME
  ./build/build-libgerbil.ss
}

build_lang () {
  feedback_low "Building gerbil languages"
  PATH="${GERBIL_BASE}/bin:${PATH}"
  GERBIL_HOME="${GERBIL_BASE}" #required by build.ss
  GERBIL_PATH="${GERBIL_HOME}" #required to build in the right place
  export PATH GERBIL_HOME GERBIL_PATH
  (cd lang && ./build.ss)
}

build_r7rs_large() {
  feedback_low "Building R7RS large"
  PATH="${GERBIL_BASE}/bin:${PATH}"
  GERBIL_HOME="${GERBIL_BASE}" #required by build.ss
  GERBIL_PATH="${GERBIL_HOME}" #required to build in the right place
  export PATH GERBIL_HOME GERBIL_PATH
  (cd r7rs-large && ./build.ss)
}

build_tools () {
  feedback_low "Building gerbil tools"
  PATH="${GERBIL_BASE}/bin:${PATH}"
  GERBIL_HOME="${GERBIL_BASE}" #required by build.ss
  export PATH GERBIL_HOME
  (cd tools && ./build.ss)
  for tool in tools/gx*.ss; do
      toolname=$(basename -s .ss $tool)
      (cd ${GERBIL_BASE}/bin && ln -sv gerbil $toolname)
  done
}

build_tags () {
  feedback_low "Build gerbil tags"
  PATH="${GERBIL_BASE}/bin:${PATH}"
  GERBIL_HOME="${GERBIL_BASE}" #required by gxtags
  export PATH GERBIL_HOME
  gxtags gerbil std lang
}

## reset build layout -- touch .keep files for scm
build_layout () {
  feedback_low "Resetting build layout structure"
  mkdir -p "${GERBIL_STAGE0}"
  touch "${GERBIL_STAGE0}/.keep"
  touch "${GERBIL_BASE}/bin/.keep"
  touch "${GERBIL_BASE}/lib/.keep"
}

build_doc () {
  feedback_low "Build gerbil docs"
  GERBIL_HOME="${GERBIL_BASE}" #required by gxtags
  export GERBIL_HOME
  (cd "${GERBIL_HOME}/doc" && npm install && node_modules/vuepress/cli.js dev)
}

#===============================================================================
## main
build_gerbil() {
  feedback_low "Building Gerbil"
  sanity_check     || die
  compile_boot_gxi || die
  stage0           || die
  stage1 final     || die
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
       "sanity-check")
         sanity_check || die
         ;;
       "boot-gxi")
         compile_boot_gxi || die
         ;;
       "stage0")
         stage0 || die
         ;;
       "stage1")
         stage1 "${2:-}" || die
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
       "layout")
         build_layout || die
         ;;
       "doc")
         build_doc || die
         ;;
       *)
         feedback_err "Unknown command."
         feedback_err \
           "Correct usage: ./build.sh [boot-gxi|stage0|stage1 [final]|stdlib|libgerbil|lang|r7rs-large|tools|tags]"
         die
         ;;
  esac
fi
feedback_low "Done"
