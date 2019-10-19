;;;; bitwise-other - functions not from SRFI 33 or SRFI 60
;;; Copyright John Cowan 2017

(define bits->vector
  (case-lambda
    ((i) (list->vector (bits->list i)))
    ((i len) (list->vector (bits->list i len)))))

(define (vector->bits vector) (list->bits (vector->list vector)))

(define (bit-swap n1 n2 i)
  (let ((n1-bit (bit-set? n1 i))
        (n2-bit (bit-set? n2 i)))
    (copy-bit n2 (copy-bit n1 i n2-bit) n1-bit)))

(define (bitwise-fold proc seed i)
  (let ((len (integer-length i)))
    (let loop ((n 0) (r seed))
      (if (= n len)
        r
        (loop (+ n 1) (proc (bit-set? n i) r))))))

(define (bitwise-for-each proc i)
  (let ((len (integer-length i)))
    (let loop ((n 0))
      (when (< n len)
        (proc (bit-set? n i))
        (loop (+ n 1))))))

(define (bitwise-unfold stop? mapper successor seed)
  (let loop ((n 0) (result 0) (state seed))
    (if (stop? state)
      result
        (loop (+ n 1)
              (copy-bit n result (mapper state))
              (successor state)))))

(define (make-bitwise-generator i)
  (lambda ()
    (let ((bit (bit-set? 0 i)))
       (set! i (arithmetic-shift i -1))
       bit)))
