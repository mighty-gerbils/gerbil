#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(def build-spec
  '((exe: "tcp-proxy")
    (exe: "socks-proxy")))

(def build-spec-static
  '((static-exe: "tcp-proxy"
                 "-prelude" "(declare (not safe))")
    (static-exe: "socks-proxy"
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
