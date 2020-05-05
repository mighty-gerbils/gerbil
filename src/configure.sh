#!/bin/sh
set -eu

readonly FEATURES='libxml libyaml zlib sqlite mysql lmdb leveldb'
readonly OPTIONS='gambit prefix'

enable_libxml='#f'
enable_libyaml='#f'
enable_zlib='#t'
enable_sqlite='#t'
enable_mysql='#f'
enable_lmdb='#f'
enable_leveldb='#f'

with_gambit=''
with_prefix='/usr/local'

readonly TEMPLATE_FILES='gerbil/gxi gerbil/gxi-build-script'

feedback_err() {
  (1>&2 echo "*** ERROR; ${1}")
}

feedback_low() {
  echo "[*] ${1}"
}

feedback_mid() {
  echo ">>> ${1}"
}

die() {
  feedback_err "configure failed"
  exit 1
}

has_word() {
  case " $1 " in
    *" $2 "*) return 0;;
  esac
  return 1
}

set_feature_enable() {
  feature="$1"
  enable="$2"
  if ! has_word "$FEATURES" "$feature"; then
    feedback_err "Unknown feature \"$feature\"."
    die
  fi
  eval "enable_$feature='$enable'"
}

set_option() {
  option="$1"
  value="$2"
  if ! has_word "$OPTIONS" "$option"; then
    feedback_err "Unknown option \"$option\"."
    die
  fi
  eval "with_$option='$value'"
}

parse_args() {
  while [ $# -gt 0 ]; do
    case "$1" in
      --disable-*) set_feature_enable "${1#--disable-}" '#f';;
      --enable-*)  set_feature_enable "${1#--enable-}"  '#t';;
      --prefix=*)  set_option "prefix" "${1#--prefix=}";;
      --prefix)
        set_option "prefix" "$2"
        shift
        ;;
      --with-*=*)
        arg="${1#--with-}"
        set_option "${arg%=*}" "${arg#*=}"
        ;;
      --with-*)
        set_option "${1#--with-}" "$2"
        shift
        ;;
      *)
        feedback_err "Unknown argument \"$1\"."
        die
        ;;
    esac
    shift
  done
}

find_paths() {
  if [ -z "$with_gambit" ]; then
    gsi=gsi
    gsc=gsc
  else
    gsi="$gambit/bin/gsi"
    gsc="$gambit/bin/gsc"
  fi
}

write_build_features() {
  feedback_mid "writing std/build-features.ss"
  (
    for feature in $FEATURES; do
      eval "enable=\"\$enable_$feature\""
      printf '(enable %s %s)\n' "$feature" "$enable"
    done
    printf '(def config-gambit-gsi "%s")\n' "$gsi"
    printf '(def config-gambit-gsc "%s")\n' "$gsc"
    printf '(def config-prefix "%s")\n' "$with_prefix"
  ) >std/build-features.ss
}

write_file() {
  filename="$1"
  feedback_mid "writing $filename"
  # cp for permissions
  cp "$filename.in" "$filename"
  sed -e "
    s,@@gsi@@,$gsi,g
    s,@@gsc@@,$gsc,g
    s,@@with_prefix@@,$with_prefix,g
" "${filename}.in" >"$filename"
}

write_files() {
  for file in $TEMPLATE_FILES; do
    write_file "$file"
  done
}

configure() {
  parse_args "$@"
  find_paths
  write_build_features
  write_files
}

configure "$@"
