#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(include "build-spec.ss")

(let ((depgraph (call-with-input-file "build-deps" read))
      (srcdir (path-normalize (path-directory (this-source-file)))))
  (make srcdir: srcdir
        optimize: #t
        static: #t
        depgraph: depgraph
        build-spec
        ))
