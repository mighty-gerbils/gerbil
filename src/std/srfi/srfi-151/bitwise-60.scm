;;;; bitwise-60 - SRFI-60 procedures without SRFI-33 analogues, renamed
;;; Copyright (C) 1991, 1993, 2001, 2003, 2005 Aubrey Jaffer
;
;Permission to copy this software, to modify it, to redistribute it,
;to distribute modified versions, and to use it for any purpose is
;granted, subject to the following restrictions and understandings.
;
;1.  Any copy made of this software must include this copyright notice
;in full.
;
;2.  I have made no warranty or representation that the operation of
;this software will be error-free, and I am under no obligation to
;provide any services, by way of maintenance, update, or otherwise.
;
;3.  In conjunction with products arising from the use of this
;material, there shall be no use of my name in any advertising,
;promotional, or sales literature without prior written consent in
;each case.

(define (bit-field-rotate n count start end)
  (define width (- end start))
  (set! count (modulo count width))
  (let ((mask (bitwise-not (arithmetic-shift -1 width))))
    (define zn (bitwise-and mask (arithmetic-shift n (- start))))
    (bitwise-ior (arithmetic-shift
             (bitwise-ior (bitwise-and mask (arithmetic-shift zn count))
                     (arithmetic-shift zn (- count width)))
             start)
            (bitwise-and (bitwise-not (arithmetic-shift mask start)) n))))

(define (bit-reverse k n)
  (do ((m (if (negative? n) (bitwise-not n) n) (arithmetic-shift m -1))
       (k (+ -1 k) (+ -1 k))
       (rvs 0 (bitwise-ior (arithmetic-shift rvs 1) (bitwise-and 1 m))))
      ((negative? k) (if (negative? n) (bitwise-not rvs) rvs))))


(define (bit-field-reverse n start end)
  (define width (- end start))
  (let ((mask (bitwise-not (arithmetic-shift -1 width))))
    (define zn (bitwise-and mask (arithmetic-shift n (- start))))
    (bitwise-ior (arithmetic-shift (bit-reverse width zn) start)
            (bitwise-and (bitwise-not (arithmetic-shift mask start)) n))))

(define (copy-bit index to bool)
  (if bool
      (bitwise-ior to (arithmetic-shift 1 index))
      (bitwise-and to (bitwise-not (arithmetic-shift 1 index)))))

(define (bits->list k . len)
  (if (null? len)
      (do ((k k (arithmetic-shift k -1))
           (lst '() (cons (odd? k) lst)))
          ((<= k 0) (reverse lst)))
      (do ((idx (+ -1 (car len)) (+ -1 idx))
           (k k (arithmetic-shift k -1))
           (lst '() (cons (odd? k) lst)))
          ((negative? idx) (reverse lst)))))

(define (list->bits bools)
  (do ((bs (reverse bools) (cdr bs))
       (acc 0 (+ acc acc (if (car bs) 1 0))))
      ((null? bs) acc)))

(define (bits . bools)
  (list->bits bools))

(define (bitwise-if mask n0 n1)
  (bitwise-ior (bitwise-and mask n0)
          (bitwise-and (bitwise-not mask) n1)))
