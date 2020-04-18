#!/usr/bin/env gxi-build-script
;; -*- Gerbil -*-
;; build-deps depgraph generator

;;; THIS FILE IS CURRENTLY DISABLED.
;;; See discussion at https://gitter.im/gerbil-scheme/community?at=5e9bbd3ea1284c4f209f98b7

(import "make" "build-config")

(include "build-spec.ss")

#|
(let (srcdir (path-normalize (path-directory (this-source-file))))
  (cons-load-path (path-normalize (path-expand ".." srcdir))))

(displayln "... generate stdlib depgraph")
(let (depgraph (make-depgraph/spec build-spec))
  (call-with-output-file "build-deps" (cut pretty-print depgraph <>)))
|#
