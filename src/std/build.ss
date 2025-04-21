#!/usr/bin/env gxi
;; -*- Gerbil -*-

(def srcdir (path-normalize (path-directory (this-source-file))))
(def libdir (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home))))
(add-load-path! srcdir)

(let (gambit-sharp
      (path-expand "lib/_gambit#.scm"
                   (getenv "GERBIL_BUILD_PREFIX" (gerbil-home))))
  (eval `(begin-foreign (include ,gambit-sharp))))

;; The indirection below allows the build-std to do its imports in a module context, transitively
(gx#import-module "build-std.ss" #t #t)
((eval 'std/build-std#build)
 srcdir: srcdir libdir: libdir debug: #t)

;; TODO: remove this if it passes
#;(cond-expand
   ;; see https://github.com/gambit/gambit/issues/953
   ((or freebsd netbsd darwin) #f)
   (else #t)))
