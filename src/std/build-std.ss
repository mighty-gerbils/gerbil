;;; -*- Gerbil -*-
;;; (C) fare
;;; Inner build file for std, as specially imported and called by ./build.ss for bootstrap reasons

(import ./build-config ./make)

(include "build-spec.ss")

(def (build srcdir libdir)
  (make build-spec srcdir: srcdir libdir: libdir debug: 'src))
