#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)
(let (srcdir (path-directory (this-source-file)))
  (make srcdir: srcdir
        prefix: "tutorial/lang"
        '("dot-app"
          "example/my-app"
          "auto-export"
          "example/my-auto-export"
          "sexp"
          "example/my-sexp")))


