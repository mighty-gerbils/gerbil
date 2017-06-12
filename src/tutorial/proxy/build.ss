#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(def build-spec
  '((exe: "tcp-proxy")
    (exe: "socks-proxy")))

(let (srcdir (path-directory (this-source-file)))
  (make srcdir: srcdir
        bindir: srcdir
        prefix: "tutorial/proxy"
        optimize: #t
        build-spec))