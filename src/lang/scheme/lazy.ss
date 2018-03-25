;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme inexact) library
package: scheme

(import :scheme/lazy-impl)
(export
  force delay delay-force
  (rename: r7rs-make-promise make-promise)
  (rename: r7rs-promise? promise?))
