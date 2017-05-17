#!/usr/bin/env bash
set -eu

die() {
    "*** Build failed"
    exit 1
}

unset GERBIL_HOME
export REGERBIL_HOME=$(dirname $(cd ${0%/*} && echo $PWD))
export GERBIL_HOME=$REGERBIL_HOME/bootstrap/stage0

if [[ "xfinal" = "x${1:-}" ]]; then
    export GERBIL_TARGET=$REGERBIL_HOME
    final="[final]"
else
    export GERBIL_TARGET=$REGERBIL_HOME/bootstrap/stage1
    final=""
fi

echo "[*] Building gerbil stage1 $final"

echo ">>> preparing $GERBIL_TARGET"
rm -rf $GERBIL_TARGET/{bin,lib}
mkdir $GERBIL_TARGET/{bin,lib}

## gerbil runtime
echo ">>> compiling runtime"
(cd gerbil/runtime && ./build.scm $GERBIL_TARGET/lib)

## stage1 build
echo ">>> preparing core build"
mkdir -p $GERBIL_TARGET/lib/gerbil
cp -v gerbil/prelude/core.ssxi.ss $GERBIL_TARGET/lib/gerbil
mkdir -p $GERBIL_TARGET/lib/static
cp -v gerbil/runtime/gx-gambc*.scm $GERBIL_TARGET/lib/static

echo ">>> compiling gerbil core"
$GERBIL_HOME/bin/gxi-script build1.ss || die

## finalize build
echo ">>> finalizing build"
cp -v boot/*.scm $GERBIL_TARGET/lib
cp -v gerbil/gxi gerbil/gxc $GERBIL_TARGET/bin
(cd $GERBIL_TARGET/bin && ln -s gxi gxi-script)
