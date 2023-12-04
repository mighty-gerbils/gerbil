#!/bin/sh
set -eu
cd $(dirname "$0") # Change to this directory
GS_FILE="$(pwd)/gerbil-stamp.scm"

STAMP_VERSION=$(git describe --tag --always)

echo "(define gerbil-stamp-version \"$STAMP_VERSION\")" | tee "$GS_FILE"
