#!/usr/bin/env gxi
;; -*- Gerbil -*-
(import :std/build-script)

(defbuild-script
  '((exe: "gxprof")
    (exe: "gxtags")
    (exe: "gxpkg"))
  libdir: (path-expand "lib" (getenv "GERBIL_HOME"))
  bindir: (path-expand "bin" (getenv "GERBIL_HOME"))
  debug: #f)
