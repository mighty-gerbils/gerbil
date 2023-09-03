#!/usr/bin/env gxi
;; -*- Gerbil -*-
(import :std/build-script)

(defbuild-script
  '("gxprof"
    "gxtags"
    "gxpkg"
    "gxtest")
  libdir: (path-expand "lib" (getenv "GERBIL_HOME"))
  bindir: (path-expand "bin" (getenv "GERBIL_HOME"))
  debug: #f)
