;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme inexact) library implementation details
package: scheme

(export #t)

(def* r7rs-log
  ((x) (log x))
  ((x y)
   (/ (log x) (log y))))
