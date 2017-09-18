;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; some exact integer procedures
package: gerbil/gambit

(export #t)

(defalias exact inexact->exact)
(defalias inexact exact->inexact)

(definline (exact-integer? obj)
  (or (fixnum? obj)
      (##bignum? obj)))

;; original author: brad lucier [gambiteer]
(def (exact-integer-sqrt y)
  (if (and (exact-integer? y)
           (not (negative? y)))
    (let (s-r (##exact-int.sqrt y))
      (values (car s-r) (cdr s-r)))
    (error "exact-integer-sqrt: Argument is not a nonnegative exact integer: " y)))
