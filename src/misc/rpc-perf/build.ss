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
    (["static"]
     (make srcdir: srcdir
           bindir: srcdir
           build-spec-static))
    ([]
     (make srcdir: srcdir
           bindir: srcdir
           build-spec))))
