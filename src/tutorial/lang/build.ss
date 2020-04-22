#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(def build-spec
  '("dot-app"
    "auto-export"
    "sexp"
    "scuby-etc"
    "scuby-grammar"
    "scuby"))

(def srcdir
  (path-normalize (path-directory (this-source-file))))

(def (main . args)
  (match args
    ([] (make srcdir: srcdir
              bindir: srcdir
              build-spec))))
