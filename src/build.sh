#!/usr/bin/env bash
set -eu

die() {
    echo "*** ERROR; build failed"
    exit 1
}

build_gerbil() {
    ./build0.sh || die
    ./build1.sh final || die
    ./build2_fini.sh
    ./build_stdlib.sh || die
    ./build_lang.sh || die
    ./build_tools.sh || die
}

echo "Building Gerbil"
build_gerbil

echo "[*] Done"
