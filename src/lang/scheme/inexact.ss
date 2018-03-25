;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme inexact) library
package: scheme

(import :scheme/inexact-impl)
(export
  acos
  asin
  atan
  cos
  exp
  finite?
  infinite?
  (rename: r7rs-log log)
  nan?
  sin
  sqrt
  tan
  )