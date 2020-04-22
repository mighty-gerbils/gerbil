#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(def build-spec
  '("proto"
    (exe: "kvstored")
    (exe: "kvstorec")))

(def build-spec-static
  '("proto"
    (static-exe: "kvstored"
                 "-ld-options" "-lz -llmdb -lcrypto"
                 "-prelude" "(declare (not safe))")
    (static-exe: "kvstorec"
                 "-ld-options" "-lcrypto"
                 "-prelude" "(declare (not safe))")))

(def srcdir
  (path-normalize (path-directory (this-source-file))))

(def (main . args)
  (match args
    (["static"]
     (make srcdir: srcdir
           bindir: srcdir
           build-spec-static))
    ([]
     (make srcdir: srcdir
           bindir: srcdir
           build-spec))))
