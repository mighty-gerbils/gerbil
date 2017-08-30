#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(include "build-spec.ss")

(let ((depgraph (call-with-input-file "build-deps" read))
      (srcdir (path-normalize (path-directory (this-source-file))))
      (libdir (path-expand "lib" (getenv "GERBIL_HOME"))))
  (make srcdir: srcdir
        libdir: libdir
        optimize: #t
        static: #t
        debug: 'env
        depgraph: depgraph
        build-spec))
