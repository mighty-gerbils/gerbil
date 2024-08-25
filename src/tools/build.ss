#!/usr/bin/env gxi
;; -*- Gerbil -*-
(import :std/build-script)

(defbuild-script
  '("env"
    "gxprof"
    "gxtags"
    "gxpkg"
    "gxtest"
    "gxensemble/opt"
    "gxensemble/util"
    "gxensemble/cmd"
    "gxensemble/admin"
    "gxensemble/env"
    "gxensemble/control"
    "gxensemble/config"
    "gxensemble/ca"
    "gxensemble/list"
    "gxensemble/misc"
    "gxensemble/repl"
    "gxensemble/srv"
    "gxensemble"
    "gxhttpd/opt"
    "gxhttpd/config"
    "gxhttpd/server"
    "gxhttpd")
  libdir: (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
  bindir: (path-expand "bin" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
  debug: #f)
