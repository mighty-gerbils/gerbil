#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(def build-spec
  '((exe: "gxprof")
    (exe: "gxtags")
    (exe: "gxpkg")))

(def srcdir
  (path-normalize (path-directory (this-source-file))))
(def libdir
  (path-expand "lib" (getenv "GERBIL_HOME")))
(def bindir
  (path-expand "bin" (getenv "GERBIL_HOME")))

(def (main . args)
  (match args
    (["deps"] (void))
    ([] (make srcdir: srcdir
              libdir: libdir
              bindir: bindir
              optimize: #t
              debug: #f
              static: #t
              prefix: "gerbil/tools"
              build-spec))))
