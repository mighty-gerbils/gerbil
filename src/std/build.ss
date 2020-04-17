#!/usr/bin/env gxi-build-script
;; -*- Gerbil -*-

(import "make" "build-config")

(include "build-spec.ss")

(let ((depgraph (call-with-input-file "build-deps" read))
      (srcdir (path-normalize (path-directory (this-source-file))))
      (libdir (path-expand "lib" (getenv "GERBIL_HOME"))))
  (add-load-path (path-normalize (path-expand ".." srcdir)))
  (make build-spec
    srcdir: srcdir libdir: libdir optimize: #t
    static: #t debug: 'src depgraph: depgraph prefix: "std"))
