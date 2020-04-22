#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(def build-spec
  '((exe: "simpled")))

(def srcdir
  (path-normalize (path-directory (this-source-file))))

(def (main)
  (make srcdir: srcdir
        bindir: srcdir
        build-spec))
