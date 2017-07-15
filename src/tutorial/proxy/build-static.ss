#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(def build-spec
  '((static-exe: "tcp-proxy"
                 "-prelude" "(declare (not safe))"
                 "-e" "(include \"~~lib/_gambit#.scm\")")
    (static-exe: "socks-proxy"
                 "-prelude" "(declare (not safe))"
                 "-e" "(include \"~~lib/_gambit#.scm\")")))

(let (srcdir (path-directory (this-source-file)))
  (make srcdir: srcdir
        bindir: srcdir
        prefix: "tutorial/proxy"
        static: #t
        optimize: #t
        build-spec))
