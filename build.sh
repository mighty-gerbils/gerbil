#!/bin/sh
set -e
cd $(dirname "$0")

die() {
  echo "build failed"
  exit 1
}

if [ -e build-env.sh ]; then
    . ./build-env.sh
else
    echo "build-env.sh does not exist; did you run configure?"
    die
fi

(cd src && ./build.sh $@) || die
