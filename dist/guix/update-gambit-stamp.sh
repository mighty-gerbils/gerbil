#!/bin/sh
set -eu
cd $(dirname "$0") # Change to this directory
GS_FILE="$(pwd)/gambit-stamp.scm"

cd ../src/gambit

STAMP_VERSION=$(git describe --tag --always)
STAMP_YMD=$(TZ=UTC git show --quiet --date='format-local:%Y%m%d' --format=%cd)
STAMP_HMS=$(TZ=UTC git show --quiet --date='format-local:%H%M%S' --format=%cd)

echo "(define gambit-stamp-version \"$STAMP_VERSION\")" | tee "$GS_FILE"
echo "(define gambit-stamp-ymd \"$STAMP_YMD\")" | tee -a "$GS_FILE"
echo "(define gambit-stamp-hms \"$STAMP_HMS\")" | tee -a "$GS_FILE"
