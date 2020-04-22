#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(def build-spec
  '((exe: "hellod")
    (exe: "baseline")))

(def build-spec-static
  '((static-exe: "hellod"
                 "-cc-options" "--param max-gcse-memory=300000000"
                 "-prelude" "(declare (not safe))")
    (static-exe: "baseline"
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
