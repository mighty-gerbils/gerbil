#lang :tutorial/lang/sexp package: tutorial/lang/example
;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Simple example that uses the sexp #lang

(export #t)

(def (greet x)
  (displayln "hello " x))
