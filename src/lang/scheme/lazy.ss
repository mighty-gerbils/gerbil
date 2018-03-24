;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme inexact) library
package: scheme

(import :scheme/lazy-impl)
(export
  delay
  delay-force
  force
  (rename: r7rs-make-promise make-promise)
  promise?)
