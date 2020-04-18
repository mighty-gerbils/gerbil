#!/usr/bin/env gxi-build-script
;; -*- Gerbil -*-

(import "make" "build-config")

(include "build-spec.ss")

(def srcdir (path-normalize (path-directory (this-source-file))))
(def libdir (path-expand "lib" (getenv "GERBIL_HOME")))

(make build-spec
  srcdir: srcdir libdir: libdir optimize: #t
  static: #t debug: 'src prefix: "std")
