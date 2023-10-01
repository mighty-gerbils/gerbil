;;; -*- Gerbil -*-
;;; (C) fare
;;; Inner build file for std, as specially imported and called by ./build.ss for bootstrap reasons

(import "build-config" "make")
(def (gerbil-libdir) (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home))))
(include "build-spec.ss")

(def (build . args) (apply make (apply build-spec args) args))
