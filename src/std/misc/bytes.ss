;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;;     belmarca
;;; miscellaneous bytes utilities
package: std/misc

(import (only-in :std/format format)
        (only-in :std/iter for in-iota)
        (only-in :std/srfi/13 string-concatenate string-upcase))
(export #t)

(define-alias bytevector-swap! u8vector-swap!)
(define-alias bytevector-reverse! u8vector-reverse!)
(define-alias bytevector->uint u8vector->uint)

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

(def (u8vector->bytestring u (delim " "))
  (let ((max (- (u8vector-length u) 1)))
    (let loop ((i max) (bs '()))
      (cond
       ((fx= i max) (loop (- i 1) (cons (format "~x" (u8vector-ref u i)) bs)))
       ((fx> i 0) (loop (- i 1) (cons (format (string-append "~x" delim) (u8vector-ref u i)) bs)))
       ((fx= i 0) (string-upcase
                   (string-concatenate
                    (cons (format (string-append "~x" delim) (u8vector-ref u i)) bs))))))))

(def (bytestring->u8vector bs)
  (let* ((lst (string-split bs #\space))
         (len (length lst))
         (u (make-u8vector len)))
    (for (x (in-iota len))
      (u8vector-set! u x (string->number (list-ref lst x) 16)))
    u))

(def (u8vector->uint bv (guard #t))

  (def (compute bv)
    (let ((l (fx- (u8vector-length bv) 1)))
      (let loop ((s 0) (i 0))
        (if (< i l)
          (loop (+ s (* (u8vector-ref bv i) (expt 256 (- l i)))) (+ i 1))
          (+ s (* (u8vector-ref bv i) (expt 256 (- l i))))))))

  (if guard
    (if (fx<= (u8vector-length bv) 8)
      (compute bv)
      (error "Disable guard to compute on u8vectors of length > 8." bv))
    (compute bv)))
