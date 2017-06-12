#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(def build-spec
  '((static-exe: "tcp-proxy" "-e" "(include \"~~lib/_gambit#.scm\")")))

(let (srcdir (path-directory (this-source-file)))
  (make srcdir: srcdir
        bindir: srcdir
        prefix: "tutorial/proxy"
        static: #t
        optimize: #t
        build-spec))