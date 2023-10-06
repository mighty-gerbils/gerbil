#!/bin/sh
set -e
cd $(dirname "$0")

die() {
  echo "install failed"
  exit 1
}

if [ $(uname) = "Darwin" ];
then
    FIND=gfind
else
    FIND=find
fi


install() {
    local prefix="${1}"
    mkdir -p "${prefix}" || die
    cp -av build/* "${prefix}" || die
    install_src "${prefix}" || die
    mkdir -p "${prefix}/share/emacs/site-lisp" || die
    cp -v etc/gerbil-mode.el "${prefix}/share/emacs/site-lisp" || die
    cp -v src/gambit/misc/gambit.el "${prefix}/share/emacs/site-lisp" || die
}

install_src() {
    local prefix="${1}"
    mkdir -p "${prefix}/src" || die
    touch "${prefix}/src/gerbil.pkg" || die
    install_src_files src/gerbil/runtime "${prefix}/src/gerbil/runtime" || die
    install_src_files src/gerbil/expander "${prefix}/src/gerbil/expander" || die
    install_src_files src/gerbil/compiler "${prefix}/src/gerbil/compiler" || die
    install_src_files src/gerbil/prelude "${prefix}/src/gerbil" || die
    cp -v src/gerbil/*.ss "${prefix}/src/gerbil" || die
    install_src_files src/std "${prefix}/src/std" || die
    install_src_files src/tools "${prefix}/src/gerbil/tools" || die
    install_src_files src/lang/gerbil "${prefix}/src/gerbil" || die
    install_src_files src/lang/scheme "${prefix}/src/scheme" || die
    install_src_files src/r7rs-large/scheme "${prefix}/src/scheme" || die
    install_src_files src/srfi "${prefix}/src/srfi" || die
    install_src_files src/tutorial "${prefix}/src/tutorial" || die
}

install_src_files() {
    local src="${1}"
    local dest="${2}"
    local oldpwd="$(pwd)"
    cd "${src}"
    for f in $(${FIND} -name \*.ss -or -name \*.ssi -or -name \*.scm -or -name \*.c | egrep -v "/[.]gerbil" | grep -v build.ss); do
        mkdir -p $(dirname "${dest}/${f}") || die
        cp -v "${f}" "${dest}/${f}" || die
    done
    cd "${oldpwd}"
}

link_version() {
    local base="${1}"
    local version="${2}"
    (cd "${base}" && rm -f current && ln -sf "${version}" current) || die
    (cd "${base}" && rm -f bin && ln -sf current/bin bin) || die
    (cd "${base}" && rm -f lib && ln -sf current/lib lib) || die
    (cd "${base}" && rm -f include && ln -sf current/include include) || die
    (cd "${base}" && rm -f src && ln -sf current/src src) || die
    (cd "${base}" && rm -f share && ln -sf current/share share) || die
}

if [ -e build-env.sh ]; then
    . ./build-env.sh
else
    echo "build-env.sh does not exist; did you run configure?"
    die
fi

install "${DESTDIR}${GERBIL_PREFIX}"

GERBIL_BASE=$(dirname "${GERBIL_PREFIX}")
if [ "${GERBIL_BASE}/${GERBIL_VERSION}" = "${GERBIL_PREFIX}" ]; then
    link_version "${DESTDIR}${GERBIL_BASE}" "${GERBIL_VERSION}"
fi
