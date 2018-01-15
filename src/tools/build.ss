#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/make)

(def build-spec
  '((exe: "gxprof")
    (exe: "gxtags")
    (exe: "gxpkg")))

(def srcdir
  (path-normalize (path-directory (this-source-file))))
(def libdir
  (path-expand "lib" (getenv "GERBIL_HOME")))
(def bindir
  (path-expand "bin" (getenv "GERBIL_HOME")))

(def (main . args)
  (match args
    (["deps"]
     (let (build-deps (make-depgraph/spec build-spec))
       (call-with-output-file "build-deps" (cut write build-deps <>))))
    ([]
     (let (depgraph (call-with-input-file "build-deps" read))
       (make srcdir: srcdir
             libdir: libdir
             bindir: bindir
             optimize: #t
             debug: #f
             static: #t
             depgraph: depgraph
             prefix: "gerbil/tools"
             build-spec)))))
