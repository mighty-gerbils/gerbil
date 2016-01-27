#!/bin/bash

die() {
    "*** Build failed"
    exit 1
}

unset GERBIL_HOME
export REGERBIL_HOME=$(dirname $(cd ${0%/*} && echo $PWD))
export GERBIL_HOME=$REGERBIL_HOME/bootstrap/stage0
export GERBIL_TARGET=$REGERBIL_HOME/bootstrap/stage1

echo "[*] Building gerbil stage1"

echo ">>> preparing $GERBIL_TARGET"
rm -rf $GERBIL_TARGET/{bin,lib}
mkdir $GERBIL_TARGET/{bin,lib}

## gerbil runtime
echo ">>> compiling runtime"
(cd gerbil/runtime && ./build.scm $GERBIL_TARGET/lib)

## stage1 build
echo ">>> compiling gerbil core"
$GERBIL_HOME/bin/gxi-script build1.ss || die

## finalize build
echo ">>> finalizing build"
cp -v boot/*.scm $GERBIL_TARGET/lib
cp -v gerbil/gxi gerbil/gxc $GERBIL_TARGET/bin
(cd $GERBIL_TARGET/bin && ln -s gxi gxi-script)

