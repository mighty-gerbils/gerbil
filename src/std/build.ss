#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import "make" "build-config")

(include "build-spec.ss")

(let ((depgraph (call-with-input-file "build-deps" read))
      (srcdir (path-normalize (path-directory (this-source-file))))
      (libdir (path-expand "lib" (getenv "GERBIL_HOME"))))
  (add-load-path (path-normalize (path-expand ".." srcdir)))
  (make srcdir: srcdir
        libdir: libdir
        optimize: #t
        static: #t
        depgraph: depgraph
        prefix: "std"
        build-spec))

