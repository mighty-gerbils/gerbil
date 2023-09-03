#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/build-script
        :std/make)

(defbuild-script
  `(;; standard scheme
    "scheme/stubs"
    "scheme/base-etc"
    "scheme/base-vectors"
    (gxc: "scheme/base-ports" ,@(include-gambit-sharp))
    "scheme/base-impl"
    "scheme/base"
    "scheme/case-lambda"
    "scheme/char-impl"
    "scheme/char"
    "scheme/complex"
    "scheme/cxr"
    "scheme/eval-impl"
    "scheme/eval"
    "scheme/file"
    "scheme/inexact-impl"
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
    ,@(cond-expand
        (,(> (system-version) 409001) '())
        (else '("scheme/time-impl")))
    "scheme/time"
    "scheme/write-impl"
    "scheme/write"
    "scheme/r5rs"
    "scheme/r5rs-null"
    "scheme/r7rs"
    ;; Gerbil variants. Polydactyl needs foreground due to using _gambit# at phi 1.
    (gxc: "gerbil/polydactyl" ,@(include-gambit-sharp))
    )
  libdir: (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
  debug: 'src)
