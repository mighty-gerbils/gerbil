#!/usr/bin/env gxi
;; -*- Gerbil -*-

(def srcdir (path-normalize (path-directory (this-source-file))))
(def libdir (path-expand "lib" (getenv "GERBIL_HOME")))
(add-load-path srcdir)

(eval '(import :std/gambit-sharp))

;; The indirection below allows the build-std to do its imports in a module context, transitively
(gx#import-module ':std/build-std #t #t)
((eval 'std/build-std#build)
 srcdir: srcdir libdir: libdir debug: 'src)
