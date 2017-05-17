#!/usr/bin/env bash

export GERBIL_HOME=$(dirname $(cd ${0%/*} && echo $PWD))
export PATH="$GERBIL_HOME/bin:$PATH"

echo "[*] Building gerbil stdlib"

cd std && ./build.ss
