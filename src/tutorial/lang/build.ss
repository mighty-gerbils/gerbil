#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)
(let (srcdir (path-directory (this-source-file)))
  (make srcdir: srcdir
        prefix: "tutorial/lang"
        '("dot-app"
          "auto-export"
          "sexp"
          "scuby-etc"
          "scuby-grammar"
          "scuby"
          )))


