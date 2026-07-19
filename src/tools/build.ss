#!/usr/bin/env gxi
;; -*- Gerbil -*-
(import :std/build-script)

;; v0.19 staging
(defbuild-script
  '("env"
    "gxtest"

    "gxhttpd/opt"
    "gxhttpd/config"
    "gxhttpd/server"
    "gxhttpd"
    )
  libdir: (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
  bindir: (path-expand "bin" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
  debug: #f)


#;(defbuild-script
  '(
    "gxprof"
    "gxtags"
    "gxpkg"

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
    )
  libdir: (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
  bindir: (path-expand "bin" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
  debug: #f)
