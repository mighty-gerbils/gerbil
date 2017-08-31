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
    (["deps"]
     (let (build-deps (make-depgraph/spec build-spec))
       (call-with-output-file "build-deps" (cut write build-deps <>))))
    ([]
     (let (depgraph (call-with-input-file "build-deps" read))
       (make srcdir: srcdir
             bindir: srcdir
             optimize: #t
             debug: 'env
             static: #t
             depgraph: depgraph
             prefix: "tutorial/lang"
             build-spec)))))
