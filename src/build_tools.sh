#!/usr/bin/env bash
set -eu

die() {
    "*** Build failed"
    exit 1
}

export GERBIL_HOME=$(dirname $(cd ${0%/*} && echo $PWD))

echo "[*] Building gerbil tools"

# just the gxprof script for now, which we copy
cp -v tools/gxprof $GERBIL_HOME/bin
