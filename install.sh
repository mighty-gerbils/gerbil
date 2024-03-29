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
    install_src "${prefix}" || die
    mkdir -p "${prefix}/share/emacs/site-lisp" || die
    cp -v etc/gerbil-mode.el "${prefix}/share/emacs/site-lisp" || die
    cp -v src/gambit/misc/gambit.el "${prefix}/share/emacs/site-lisp" || die
}

install_src() {
    local prefix="${1}"
    mkdir -p "${prefix}/src" || die
    touch "${prefix}/src/gerbil.pkg" || die
    install_src_files src/gerbil/core "${prefix}" || die
    install_src_files src/gerbil/runtime "${prefix}" || die
    install_src_files src/gerbil/expander "${prefix}" || die
    install_src_files src/gerbil/compiler "${prefix}" || die
    cp -v src/gerbil/*.ss "${prefix}/src/gerbil" || die
    install_src_files src/std "${prefix}" || die
    install_src_files src/tools "${prefix}" || die
    install_src_files src/lang/gerbil "${prefix}" || die
    install_src_files src/lang/scheme "${prefix}" || die
    install_src_files src/r7rs-large/scheme "${prefix}" || die
    install_src_files src/srfi "${prefix}" || die
    install_src_files src/tutorial "${prefix}" || die
}

install_src_files() {
    local src="${1}"
    local dest="${2}"
    for f in $(find "${src}" -name \*.ss -o -name \*.ssi -o -name \*.scm -o -name \*.c | egrep -v "/[.]gerbil" | grep -v build.ss); do
        mkdir -p $(dirname "${dest}/${f}") || die
        cp -v "${f}" "${dest}/${f}" || die
    done
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

link_dist () {
    local prefix="${1}"
    local gerbil="${2}"
    local rel="${gerbil#$prefix}"
    local dist_bin="${prefix}/bin"
    local gerbil_bin="..${rel}/bin"
    
    echo; echo "Making executable links"; echo;
    (cd "${dist_bin}" && ln -sfv ${gerbil_bin}/gx* "${gerbil_bin}/gerbil" .) || die
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

if [ "$GERBIL_DIST" = "yes" ]; then
    link_dist "$${DESTDIR}{GERBIL_FHS}" "${DESTDIR}${GERBIL_PREFIX}"
fi


echo; echo "Done! Enjoy Gerbil'ing :)"; echo
