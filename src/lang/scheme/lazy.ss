;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme inexact) library
package: scheme

(import :scheme/lazy-impl)
(export
  delay
  delay-force
  force
  make-promise
  promise?
  )