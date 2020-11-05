;;; -*- Gerbil -*-
;;; (C) fare
;;; Inner build file for std, as specially imported and called by ./build.ss for bootstrap reasons

(import ./build-config ./make)

(include "build-spec.ss")

(def (build . args) (apply make (apply build-spec args) args))
