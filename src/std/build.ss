#!/usr/bin/env gxi
;; -*- Gerbil -*-

(def srcdir (path-normalize (path-directory (this-source-file))))
(def libdir (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home))))
(add-load-path srcdir)

(eval '(import "gambit-sharp.ss"))

;; The indirection below allows the build-std to do its imports in a module context, transitively
(gx#import-module "build-std.ss" #t #t)
((eval 'std/build-std#build)
 srcdir: srcdir libdir: libdir debug: 'src)
