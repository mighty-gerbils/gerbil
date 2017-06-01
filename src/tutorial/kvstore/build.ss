#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)
(let (srcdir (path-directory (this-source-file)))
  (make srcdir: srcdir
        bindir: srcdir
        prefix: "tutorial/kvstore"
        optimize: #t
        '("proto"
          (exe: "kvstored")
          (exe: "kvstorec"))))

