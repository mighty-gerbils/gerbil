#!/bin/sh
set -e
cd $(dirname "$0")

die() {
  echo "install failed"
  exit 1
}

install() {
    local prefix="${1}"
    mkdir -p "${prefix}" || die
    cp -av build/* "${prefix}" || die
    mkdir -p "${prefix}/share/emacs/site-lisp" || die
    cp -v etc/gerbil-mode.el "${prefix}/share/emacs/site-lisp" || die
    cp -v src/gambit/misc/gambit.el "${prefix}/share/emacs/site-lisp" || die
}

link_version() {
    local base="${1}"
    local version="${2}"
    (cd "${base}" && rm -f current && ln -sfv "${version}" current) || die
    (cd "${base}" && rm -f bin && ln -sfv current/bin bin) || die
    (cd "${base}" && rm -f lib && ln -sfv current/lib lib) || die
    (cd "${base}" && rm -f include && ln -sfv current/include include) || die
    (cd "${base}" && rm -f share && ln -sfv current/share share) || die
}

if [ -e build-env.sh ]; then
    . ./build-env.sh
else
    echo "build-env.sh does not exist; did you run configure?"
    die
fi

if [ -z "${DESTDIR}" ]; then
    install "${GERBIL_PREFIX}"

    GERBIL_BASE=$(dirname "${GERBIL_PREFIX}")
    if [ "${GERBIL_BASE}/${GERBIL_VERSION}" = "${GERBIL_PREFIX}" ]; then
        link_version "${GERBIL_BASE}" "${GERBIL_VERSION}"
    fi
else
    GERBIL_BASE=$(dirname "${GERBIL_PREFIX}")
    if [ "${GERBIL_BASE}/${GERBIL_VERSION}" = "${GERBIL_PREFIX}" ]; then
        install "${DESTDIR}/${GERBIL_VERSION}"
        link_version "${DESTDIR}" "${GERBIL_VERSION}"
    else
        install "${DESTDIR}"
    fi
fi
