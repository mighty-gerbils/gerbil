#!/usr/bin/env bash

die() {
    echo "*** ERROR; build failed"
    exit 1
}

build_stage1() {
    ./build0.sh || die
    ./build1.sh final || die
    ./build2_fini.sh
    ./build_stdlib.sh || die
}

build_stage2() {
    ./build0.sh || die
    ./build1.sh || die
    ./build2.sh || die
    ./build2_fini.sh
    ./build_stdlib.sh || die
}

if [[ "xstage2" = "x${1:-}" ]]; then
    echo "Building stage2 Gerbil"
    build_stage2
else
    echo "Building Gerbil"
    build_stage1
fi

echo "[*] Done"
