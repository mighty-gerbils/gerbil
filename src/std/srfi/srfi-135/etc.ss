;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-135: Immutable Texts

(import :gerbil/gambit
        :std/error
        (only-in :std/srfi/13 string-downcase string-upcase string-titlecase))
(export #t)

(def (string-copy! s i x)
  (substring-move! x 0 (string-length x) s i))

(define (div-and-mod x y)
  (cond ((and (exact-integer? x) (exact-integer? y))
         (cond ((= y 0)
                (error "mod: zero divisor" x y))
               ((>= x 0)
                (values (quotient x y) (remainder x y)))
               ((< y 0)
                                        ; x < 0, y < 0
                (let* ((q (quotient x y))
                       (r (- x (* q y))))
                  (if (= r 0)
                    (values q 0)
                    (values (+ q 1) (- r y)))))
               (else
                                        ; x < 0, y > 0
                (let* ((q (quotient x y))
                       (r (- x (* q y))))
                  (if (= r 0)
                    (values q 0)
                    (values (- q 1) (+ r y)))))))
        (else
         (error "div or mod: illegal arguments" x y))))

(define (div x y)
  (cond ((and (exact-integer? x)
              (exact-integer? y)
              (>= x 0))
         (quotient x y))
        (else
         (call-with-values
             (lambda () (div-and-mod x y))
           (lambda (q r) q)))))

(define (mod x y)
  (cond ((and (exact-integer? x)
              (exact-integer? y)
              (>= x 0))
         (remainder x y))
        (else
         (call-with-values
             (lambda () (div-and-mod x y))
           (lambda (q r) r)))))

(defalias string-foldcase string-downcase)
(defalias char-foldcase char-downcase)
(defalias bytevector? u8vector?)
(defalias bytevector-length u8vector-length)
(defalias bytevector-u8-ref u8vector-ref)
(defalias bytevector-u8-set! u8vector-set!)
(defalias make-bytevector make-u8vector)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; The following procedures are not part of R7RS (small).
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (last-pair x)
  (if (and (pair? x) (pair? (cdr x)))
      (last-pair (cdr x))
      x))

;;; Returns first n elements of the list x.

(define (list-take x n)
  (let loop ((n n)
             (x x)
             (y '()))
    (if (= n 0)
        (reverse y)
        (loop (- n 1) (cdr x) (cons (car x) y)))))
