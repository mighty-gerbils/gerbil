#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(def build-spec
  '((exe: "hellod")))

(def build-spec-static
  '((static-exe: "hellod"
                 "-cc-options" "--param max-gcse-memory=300000000"
                 "-prelude" "(declare (not safe))"
                 "-e" "(include \"~~lib/_gambit#.scm\")")))

(def srcdir (path-normalize (path-directory (this-source-file))))

(def (main . args)
  (match args
    (["deps"]
     (let (build-deps (make-depgraph/spec build-spec))
       (call-with-output-file "build-deps" (cut write build-deps <>))))
    (["static"]
     (let (depgraph (call-with-input-file "build-deps" read))
       (make srcdir: srcdir
             bindir: srcdir
             optimize: #t
             static: #t
             depgraph: depgraph
             prefix: "misc/http-perf"
             build-spec-static)))
    ([]
     (let (depgraph (call-with-input-file "build-deps" read))
       (make srcdir: srcdir
             bindir: srcdir
             optimize: #t
             static: #t
             depgraph: depgraph
             prefix: "misc/http-perf"
             build-spec)))))
