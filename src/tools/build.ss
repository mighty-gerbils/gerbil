#!/usr/bin/env gxi
;; -*- Gerbil -*-
(import :std/build-script)

(defbuild-script
  '((dynamic-exe: "gxprof")
    (dynamic-exe: "gxtags")
    (dynamic-exe: "gxpkg")
    (dynamic-exe: "gxtest"))
  libdir: (path-expand "lib" (getenv "GERBIL_HOME"))
  bindir: (path-expand "bin" (getenv "GERBIL_HOME"))
  debug: #f)
