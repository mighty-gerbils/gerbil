#!/usr/bin/env gxi-script
;; -*- Gerbil -*-

(import :std/make)

(def *modules*
  '("scheme/stubs"
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
    "scheme/time-impl"
    "scheme/time"
    "scheme/write-impl"
    "scheme/write"
    "scheme/r5rs"
    ))

(let (srcdir (path-normalize (path-directory (this-source-file))))
  (add-load-path srcdir))

(let* ((files (map (cut string-append <> ".ss") *modules*))
       (depgraph (make-depgraph files)))
  (call-with-output-file "build-deps" (cut pretty-print depgraph <>)))
