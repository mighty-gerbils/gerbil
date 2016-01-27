#!/bin/bash

die() {
    echo "*** ERROR; bootstrap failed"
    exit 1
}

./build0.sh || die
./build1.sh || die
./build2.sh || die
./build2_fini.sh
