#!/usr/bin/env bash
set -eu

target_setup () {
  local target="${1}"
  # make sure 'target' expands to something: don't want to 'rm -rf /bin'
  rm -rf "${target:?}/"{bin,lib} 
  mkdir -p "${target}/"{bin,lib}
}
readonly -f target_setup

compile_runtime () {
  local target_lib="${1}"
  (cd gerbil/runtime && ./build.scm "${target_lib}")
}
readonly -f compile_runtime

finalize_build () {
  local target_lib="${1}"
  local target_bin="${2}"
  cp -v gerbil/boot/*.scm "${target_lib}"
  cp -v gerbil/interactive/*.ss "${target_lib}"
  cp -v gerbil/gxi gerbil/gxc gerbil/gxi-build-script "${target_bin}"
  (cd "${target_bin}" && ln -s gxi gxi-script)
}
readonly -f finalize_build

