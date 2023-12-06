#!/bin/sh
# Create a version MANIFEST so you can build a git-less tarball of Gerbil.
#
# Given an argument $1, use it as the gerbil_stamp_version, e.g. for a release.
# Otherwise, extract the gerbil_stamp_version from git.
#
# Commit the MANIFEST to git for a release and a release only.
# Delete it from git immediately after release.
# See doc/reference/dev/release.md for instructions.
#
# git grep MANIFEST will tell you which files care about the MANIFEST

cat > MANIFEST <<EOF
gerbil_stamp_version=${1:-$(git describe --tags --always)}
gambit_stamp_version=$(cd src/gambit ; git describe --tags --always)
gambit_stamp_ymd=$(cd src/gambit ; TZ=UTC git show --quiet --date='format-local:%Y%m%d' --format=%cd)
gambit_stamp_hms=$(cd src/gambit ; TZ=UTC git show --quiet --date='format-local:%H%M%S' --format=%cd)
EOF
