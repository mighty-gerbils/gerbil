#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(def build-spec
  '((exe: "baseline-port")
    (exe: "baseline-buffer")
    (exe: "baseline-io")
    (exe: "nullproto")))

(def build-spec-static
  '((static-exe: "nullproto"
                 "-ld-options" "-lcrypto"
                 "-prelude" "(declare (not safe))")))

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
             prefix: "misc/rpc-perf"
             build-spec-static)))
    ([]
     (let (depgraph (call-with-input-file "build-deps" read))
       (make srcdir: srcdir
             bindir: srcdir
             optimize: #t
             debug: 'env
             static: #t
             depgraph: depgraph
             prefix: "misc/rpc-perf"
             build-spec)))))
