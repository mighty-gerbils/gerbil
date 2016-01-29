#!/bin/bash

die() {
    echo "*** ERROR; build failed"
    exit 1
}

./build0.sh || die
./build1.sh || die
./build2.sh || die
./build2_fini.sh
./build_stdlib.sh || die

echo "[*] Done"
