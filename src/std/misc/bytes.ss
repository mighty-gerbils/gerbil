;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;;     belmarca
;;; miscellaneous bytes utilities
package: std/misc

(export #t)

(define-alias bytevector-swap! u8vector-swap!)
(define-alias bytevector-reverse! u8vector-reverse!)

(def (u8vector-swap! v j k)
  (let ((j-val (u8vector-ref v j))
        (k-val (u8vector-ref v k)))
    (u8vector-set! v j k-val)
    (u8vector-set! v k j-val)))

(def (u8vector-reverse! v)
  (let ((len (u8vector-length v)))
    (do ((left-index 0 (+ left-index 1))
         (right-index (- len 1) (- right-index 1)))
        ((<= right-index left-index))
      (u8vector-swap! v left-index right-index))))
