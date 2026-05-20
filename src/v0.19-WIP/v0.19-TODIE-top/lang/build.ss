#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/build-script
        :std/make)

(defbuild-script
  `(;; standard scheme
    "scheme/base-impl"
    "scheme/base"
    "scheme/case-lambda"
    "scheme/char"
    "scheme/complex"
    "scheme/cxr"
    "scheme/eval-impl"
    "scheme/eval"
    "scheme/file"
    "scheme/inexact"
    "scheme/lazy-impl"
    "scheme/lazy"
    "scheme/load-impl"
    "scheme/load"
    "scheme/process-context-impl"
    "scheme/process-context"
    "scheme/read"
    "scheme/repl-impl"
    "scheme/repl"
    "scheme/time"
    "scheme/write"
    "scheme/r5rs"
    "scheme/r5rs-null"
    "scheme/r7rs"
    ;; Gerbil variants. Polydactyl needs foreground due to using _gambit# at phi 1.
    (gxc: "gerbil/polydactyl" ,@(include-gambit-sharp))
    )
  libdir: (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
  debug: 'src)
