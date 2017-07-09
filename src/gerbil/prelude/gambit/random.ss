;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: random
package: gerbil/gambit

(export #t)
(extern namespace: #f
  default-random-source
  random-integer random-real random-u8vector random-f64vector
  make-random-source random-source?
  random-source-state-ref random-source-state-set!
  random-source-randomize! random-source-pseudo-randomize!
  random-source-make-integers random-source-make-reals
  random-source-make-u8vectors random-source-make-f64vectors
  )
(define-alias random-bytes random-u8vector)
(define-alias random-source-make-bytes random-source-make-u8vectors)

;; randomize the default random source on load
(random-source-randomize! default-random-source)
