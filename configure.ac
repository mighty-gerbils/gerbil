# Configure template for Gerbil system.
# Tangled using Org Mode (C-c C-v t) from configure.org
# $ tangle() {
#    emacs --batch -l org --eval "(org-babel-tangle-file \"$1\")"
# }
# $ tangle configure.org

# Copyright (c) 2019 by drewc <me@drewc.ca>, All Rights Reserved.

# Process this file with autoconf to produce a configure script.

AC_INIT(Gerbil,v0.16,vyzo at hackzen.org,gerbil-v0_16)
PACKAGE_SHORTNAME="gerbil"

if test -d ./.git && test "$PACKAGE_VERSION" = "v0.16" ; then
PACKAGE_VERSION=$(git describe --tags)
fi

PACKAGE_STRING="Gerbil $PACKAGE_VERSION"
PACKAGE_TARNAME=$(echo $PACKAGE_SHORTNAME"-"$PACKAGE_VERSION | sed 's/\./_/g')

AC_SUBST(PACKAGE_SHORTNAME)
AC_SUBST(PACKAGE_NAME)
AC_SUBST(PACKAGE_VERSION)
AC_SUBST(PACKAGE_STRING)
AC_SUBST(PACKAGE_BUGREPORT)
AC_SUBST(PACKAGE_TARNAME)

AC_COPYRIGHT([[Copyright (c) 2020 by drewc <me@drewc.ca>, All Rights Reserved.]])


AC_SUBST(gerbil_make_conf, "")

AC_ARG_WITH([gambit],
            [AS_HELP_STRING([--with-gambit=DIR],
              [Set default location of Gambit])],
            [],
            [with_gambit=no])
if test "x$with_gambit" != xno ; then
 gerbil_make_conf="$gerbil_make_conf --with-gambit=\"${with_gambit}\""
fi


# Libxml
AC_ARG_ENABLE(libxml,
AS_HELP_STRING([--enable-libxml], [build std/xml libraries - requires libxml2 (default is NO)]),
ENABLE_LIBXML=$enableval,
ENABLE_LIBXML=no)

if test "$ENABLE_LIBXML" = yes; then
gerbil_make_conf="$gerbil_make_conf --enable-libxml"
LIBS="$LIBS -lxml2"
else
gerbil_make_conf="$gerbil_make_conf --disable-libxml"
fi
# Libyaml
AC_ARG_ENABLE(libyaml,
AS_HELP_STRING([--enable-libyaml], [build std/text/yaml libraries - requires libyaml (default is NO)]),
ENABLE_LIBYAML=$enableval,
ENABLE_LIBYAML=no)

if test "$ENABLE_LIBYAML" = yes; then
LIBS="$LIBS -lyaml"
gerbil_make_conf="$gerbil_make_conf --enable-libyaml"
else
gerbil_make_conf="$gerbil_make_conf --disable-libyaml"
fi

# Zlib
AC_ARG_ENABLE(zlib,
AS_HELP_STRING([--disable-zlib], [build std/text/zlib libraries - requires zlib (default is --enable-zlib]),
ENABLE_ZLIB=$enableval,
ENABLE_ZLIB=no)

if test "$ENABLE_ZLIB" = yes; then
gerbil_make_conf="$gerbil_make_conf --enable-zlib"
LIBS="$LIBS -lz"
else
gerbil_make_conf="$gerbil_make_conf --disable-zlib"
fi

# Sqlite
AC_ARG_ENABLE(sqlite,
AS_HELP_STRING([--disable-sqlite], [build std/db/sqlite libraries - requires sqlite3 (default is --enable-sqlite)]),
ENABLE_SQLITE=$enableval,
ENABLE_SQLITE=yes)
if test "$ENABLE_SQLITE" = yes; then
gerbil_make_conf="$gerbil_make_conf --enable-sqlite"
else
gerbil_make_conf="$gerbil_make_conf --disable-sqlite"
fi

# Mysql
AC_ARG_ENABLE(mysql,
AS_HELP_STRING([--enable-mysql], [build std/db/mysql libraries - requires mysql (default is NO)]),
ENABLE_MYSQL=$enableval,
ENABLE_MYSQL=no)

if test "$ENABLE_MYSQL" = yes; then
gerbil_make_conf="$gerbil_make_conf --enable-mysql"
else
gerbil_make_conf="$gerbil_make_conf --disable-mysql"
fi

# Lmdb
AC_ARG_ENABLE(lmdb,
AS_HELP_STRING([--enable-lmdb], [build std/db/lmdb libraries - requires lmdb2 (default is NO)]),
ENABLE_LMDB=$enableval,
ENABLE_LMDB=no)

if test "$ENABLE_LMDB" = yes; then
gerbil_make_conf="$gerbil_make_conf --enable-lmdb"
LIBS="$LIBS -llmdb"
else
gerbil_make_conf="$gerbil_make_conf --disable-lmdb"
fi

# Leveldb
AC_ARG_ENABLE(leveldb,
AS_HELP_STRING([--enable-leveldb], [build std/db/leveldb libraries - requires leveldb2 (default is NO)]),
ENABLE_LEVELDB=$enableval,
ENABLE_LEVELDB=no)

if test "$ENABLE_LEVELDB" = yes; then
gerbil_make_conf="$gerbil_make_conf --enable-leveldb"
LIBS="$LIBS -lleveldb"
else
gerbil_make_conf="$gerbil_make_conf --disable-leveldb"
fi


AC_CONFIG_FILES([Makefile])
AC_OUTPUT
