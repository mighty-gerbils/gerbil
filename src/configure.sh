#!/bin/sh
set -eu

readonly FEATURES='libxml libyaml zlib sqlite mysql lmdb leveldb'

enable_libxml='#f'
enable_libyaml='#f'
enable_zlib='#t'
enable_sqlite='#t'
enable_mysql='#f'
enable_lmdb='#f'
enable_leveldb='#f'

feature_exists() {
  case " $FEATURES " in
    *" $1 "*) return 0;;
  esac
  return 1
}

write_build_features() {
  (
    for feature in $FEATURES; do
      eval "enable=\"\$enable_$feature\""
      printf '(enable %s %s)\n' "$feature" "$enable"
    done
  ) >std/build-features.ss
}

while [ $# -gt 0 ]; do
  case "$1" in
    --enable-*)
      feature="${1#--enable-}"
      if ! feature_exists "$feature"; then
        printf 'configure.sh: unknown feature "%s".\n' "$feature" >&2
        exit 1
      fi
      eval "enable_$feature='#t'"
      ;;
    --disable-*)
      feature="${1#--disable-}"
      if ! feature_exists "$feature"; then
        printf 'configure.sh: unknown feature "%s".\n' "$feature" >&2
        exit 1
      fi
      eval "enable_$feature='#f'"
      ;;
    *)
      printf 'configure.sh: unknown argument "%s".\n' "$1" >&2
      exit 1
      ;;
  esac
  shift
done

write_build_features
