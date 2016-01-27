#!/bin/bash

unset GERBIL_HOME
export GERBIL_HOME=$(dirname $(cd ${0%/*} && echo $PWD))

echo "[*] Cleaning up bootstrap"

rm -rf $GERBIL_HOME/bootstrap/stage0/*
rm -rf $GERBIL_HOME/bootstrap/stage1/*
touch $GERBIL_HOME/bootstrap/stage0/.keep
touch $GERBIL_HOME/bootstrap/stage1/.keep
