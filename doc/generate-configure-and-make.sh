#!/usr/bin/env bash
_dir=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)

GERBIL_SOURCE="$_dir/../"


tangle() {
   emacs -Q --batch --eval "(require 'org)" --eval "(org-babel-tangle-file \"$1\")"
}

# Once all that is done, run autoconf.
cd $GERBIL_SOURCE && tangle ./doc/configure-and-make.org && autoconf -V && \
    echo Generated ./configure and ./Makefile
