#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(include "build-spec.ss")

(let ((srcdir (path-directory (this-source-file)))
      (depgraph (call-with-input-file "build-deps" read)))
  (make srcdir: srcdir
        bindir: srcdir
        prefix: "tutorial/kvstore"
        optimize: #t
        static: #t
        depgraph: depgraph
        '("proto"
          (static-exe: "kvstored"
                       "-ld-options" "-lz -llmdb"
                       "-prelude" "(declare (not safe))"
                       "-e" "(include \"~~lib/_gambit#.scm\")")
          (static-exe: "kvstorec"
                       "-prelude" "(declare (not safe))"
                       "-e" "(include \"~~lib/_gambit#.scm\")"))))
