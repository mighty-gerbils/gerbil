#!/bin/bash

if [ -z "$GERBIL_HOME" ]; then
    GERBIL_HOME=$(dirname $(cd ${0%/*} && echo $PWD))
    export GERBIL_HOME
fi

GERBIL_TARGET=$GERBIL_HOME/bootstrap/stage0

echo ">>> preparing $GERBIL_TARGET"
rm -rf $GERBIL_TARGET/{bin,lib}
mkdir $GERBIL_TARGET/{bin,lib}

## gerbil runtime
(cd gerbil/runtime && ./build.scm $GERBIL_TARGET/lib)

## gerbil bootstrap
echo ">>> preparing bootstrap"
rsync -auv bootstrap/gerbil $GERBIL_TARGET/lib
find $GERBIL_TARGET/lib -name \*.scm > .build.stage0

echo ">>> compiling gerbil core"
./build0.scm .build.stage0
rm -f .build.stage0

## finalize build
echo ">>> finalizing build"
cp -v boot/*.scm $GERBIL_TARGET/lib
cp -v gerbil/gxi gerbil/gxc $GERBIL_TARGET/bin
(cd $GERBIL_TARGET/bin && ln -s gxi gxi-script)
