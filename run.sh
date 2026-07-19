#!/bin/sh

# Run a command in the environment of the Gerbil being built
# (rather than an already installed Gerbil, or one being installed).
# e.g.
#    ./run.sh gxi -e '(displayln (gerbil-version-string))'

set -eu
readonly GERBIL_BASE="$(cd "$(dirname "$0")"; pwd -P)"
readonly GERBIL_SOURCE="${GERBIL_BASE}/src"
readonly GERBIL_STAGE0="${GERBIL_BASE}/bootstrap"

export GERBIL_SOURCE GERBIL_STAGE0 GERBIL_BUILD_PREFIX GERBIL_GSC GERBIL_BUILD_CORES GAMBOPT \
       GERBIL_LOADPATH PATH LD_LIBRARY_PATH DYLD_LIBRARY_PATH DYLD_FALLBACK_LIBRARY_PATH

if [ -e "$GERBIL_BASE/build-env.sh" ]; then
    . "$GERBIL_BASE/build-env.sh"
fi

## Build Environment
GERBIL_BUILD_PREFIX="${GERBIL_BASE}/build"
GERBIL_GSC="${GERBIL_BUILD_PREFIX}/bin/gsc"
GERBIL_LOADPATH="${GERBIL_BUILD_PREFIX}/lib"
GAMBOPT="~~bin=${GERBIL_BUILD_PREFIX}/bin,~~lib=${GERBIL_BUILD_PREFIX}/lib,~~include=${GERBIL_BUILD_PREFIX}/include"
PATH="${GERBIL_BUILD_PREFIX}/bin:${GERBIL_STAGE0}/bin:${PATH}"

# required when --enable-shared
if [ "x${LD_LIBRARY_PATH:-}" = "x" ]; then
    LD_LIBRARY_PATH="${GERBIL_BUILD_PREFIX}/lib"
else
    LD_LIBRARY_PATH="${GERBIL_BUILD_PREFIX}/lib:${LD_LIBRARY_PATH}"
fi
DYLD_LIBRARY_PATH="$LD_LIBRARY_PATH"
DYLD_FALLBACK_LIBRARY_PATH="$LD_LIBRARY_PATH"

exec "${@:-gxi}"
