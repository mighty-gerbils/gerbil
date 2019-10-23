;;;; Generic implementation of carry functions from the R6RS standard.

;;; These implementations of fx+/carry, fx-/carry, and fx*/carry
;;; are very inefficient, and should be replaced by proper
;;; assembly language operations if at all possible.
;;; Furthermore, there are no tests for them,
;;; because of their dependency on fx-width.

(define exp-width (expt 2 fx-width))

(define (fx+/carry i j k)
  (let*-values (((s) (+ i j k))
         ((q r) (balanced/ s exp-width)))
  (values r q)))

(define (fx-/carry i j k)
  (let*-values (((d) (- i j k))
         ((q r) (balanced/ d exp-width)))
    (values r q)))

(define (fx*/carry i j k)
  (let*-values (((s) (+ (* i j) k))
         ((q r) (balanced/ s exp-width)))
    (values r q)))

;;; Helper functions from SRFI 151

(define (floor-/+ n d)
  (let ((n (- 0 n)))
    (let ((q (quotient n d)) (r (remainder n d)))
      (if (zero? r)
          (values (- 0 q) r)
          (values (- (- 0 q) 1) (- d r))))))

(define (ceiling-/- n d)
  (let ((n (- 0 n)) (d (- 0 d)))
    (let ((q (quotient n d)) (r (remainder n d)))
      (if (zero? r)
          (values q r)
          (values (+ q 1) (- d r))))))

(define (euclidean/ n d)
  (if (and (exact-integer? n) (exact-integer? d))
      (cond ((and (negative? n) (negative? d)) (ceiling-/- n d))
            ((negative? n) (floor-/+ n d))
            ((negative? d)
             (let ((d (- 0 d)))
               (values (- 0 (quotient n d)) (remainder n d))))
            (else (values (quotient n d) (remainder n d))))
      (let ((q (if (negative? d) (ceiling (/ n d)) (floor (/ n d)))))
        (values q (- n (* d q))))))

(define (balanced/ x y)
  (call-with-values
   (lambda () (euclidean/ x y))
   (lambda (q r)
     (cond ((< r (abs (/ y 2)))
            (values q r))
           ((> y 0)
            (values (+ q 1) (- x (* (+ q 1) y))))
           (else
            (values (- q 1) (- x (* (- q 1) y))))))))

