;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;;     fare
;;; :std/misc/number test

(import :std/test
        (only-in :std/format printf)
        (only-in :std/sugar try catch defrule)
        (only-in :std/misc/list-builder with-list-builder)
        :std/misc/number)
(export number-test)

(defrule (check-rep parse unparse rep obj)
  (begin ;;let ((rep rep) (obj obj))
    (check-equal? (parse rep) obj)
    (check-equal? (unparse obj) rep)))

(def number-test
  (test-suite "test :std/misc/number"
    (test-case "test xmin"
      (check (xmin) => +inf.0)
      (check (xmin 42) => 42)
      (check (xmin 10 42) => 10)
      (check (xmin 10 10) => 10)
      (check (xmin 42 10) => 10)
      (check (xmin 10 +inf.0) => 10)
      (check (xmin 10 -inf.0) => -inf.0)
      (check (xmin -inf.0 -5) => -inf.0)
      (check (xmin +inf.0 -5) => -5)
      (check (xmin -inf.0 +inf.0) => -inf.0)
      (check (xmin +inf.0 -inf.0) => -inf.0)
      (check (xmin 1 42 10 3.0 -5 4) => -5)
      (check (xmin 1 2 2 3) => 1))

    (test-case "test xmax"
      (check (xmax) => -inf.0)
      (check (xmax 42) => 42)
      (check (xmax 10 42) => 42)
      (check (xmax 10 10) => 10)
      (check (xmax 42 10) => 42)
      (check (xmax 10 +inf.0) => +inf.0)
      (check (xmax 10 -inf.0) => 10)
      (check (xmax -inf.0 -5) => -5)
      (check (xmax +inf.0 -5) => +inf.0)
      (check (xmax -inf.0 +inf.0) => +inf.0)
      (check (xmax +inf.0 -inf.0) => +inf.0)
      (check (xmax 1 42 10 3.0 -5 4) => 42)
      (check (xmax 1 2 2 3) => 3)
      (check (xmax 1 2 -2 3) => 3))

    (test-case "test increment! and its variants"
      (def n 0)
      (increment! n)
      (check n => 1)
      (increment! n 5)
      (check n => 6)
      (increment! n -2)
      (check n => 4)
      (check (pre-increment! n) => 5)
      (check n => 5)
      (check (pre-increment! n 4) => 9)
      (check n => 9)
      (check (post-increment! n -3) => 9)
      (check n => 6)
      (check (post-increment! n) => 6)
      (check n => 7)
      (def l [43])
      (decrement! (car l))
      (check l => [42])
      (decrement! (car l) 5)
      (check l => [37])
      (decrement! (car l) -2)
      (check l => [39])
      (check (pre-decrement! (car l)) => 38)
      (check l => [38])
      (check (pre-decrement! (car l) 4) => 34)
      (check l => [34])
      (check (post-decrement! (car l) -3) => 34)
      (check l => [37])
      (check (post-decrement! (car l)) => 37)
      (check l => [36])
      (increment! (car l) 1 2 3)
      (check l => [42]))

    (test-case "make-counter"
      (def c (make-counter))
      (check (c 0) => 0)
      (check (c) => 0)
      (check (c) => 1)
      (check (c) => 2)
      (check (c 0) => 3)
      (check (c 0) => 3)
      (check (c) => 3)
      (check (c) => 4)
      (check (c 0) => 5)
      (check (c 10) => 5)
      (check (c 0) => 15)
      (check (c) => 15)
      (check (c) => 16))

    (test-case "integer-part, fractional-part"
      (defrule (check-parts (x i f) ...)
        (begin
          (begin
            (check (integer-part x) => i)
            (check (fractional-part x) => f)
            (check (eqv? x (+ i f)) => #t)) ...))
      (check-parts
       (0 0 0)
       (0.0 0 0.0)
       (0.0 0 0.0)
       (1 1 0)
       (1.0 1 0.0)
       (1.5 1 0.5)
       (-1 -1 0)
       (-1.0 -1 0.0)
       (-1.5 -1 -0.5)))

    (test-case "floor-align, ceiling-align"
      (check (floor-align 20 10) => 20)
      (check (floor-align 25 10) => 20)
      (check (floor-align 25 -10) => 30)
      (check (ceiling-align 20 10) => 20)
      (check (ceiling-align 25 10) => 30)
      (check (ceiling-align 25 -10) => 20))

    (test-case "real->sign"
      (defrule (checks res num ...) (begin (check (real->sign num) => res) ...))
      (checks 1 1 42 1e-100 1e100 +inf.0)
      (checks 0 0.0 0 -0.0)
      (checks -1 -1 -42 -1e-100 -1e100 -inf.0))

    (test-case "real->sign"
      (defrule (checks res num ...) (begin (check (real->sign num) => res) ...))
      (checks 1 1 42 1e-100 1e100 +inf.0)
      (checks 0 0.0 0 -0.0)
      (checks -1 -1 -42 -1e-100 -1e100 -inf.0))

    (test-case "nat?"
      (defrule (checks res num ...) (begin (check (nat? num) => res) ...))
      (checks #t 0 1 42 (expt 10 100))
      (checks #f "foo" 'not-a-number [] #(1)
              0.0 -0.0 -1 -42 1e100 1e-100 -1e-100 -1e100 -inf.0 +inf.0))

    (test-case "fxnat?"
      (defrule (checks res num ...) (begin (check (fxnat? num) => res) ...))
      (checks #t 0 1 42)
      (checks #f "foo" 'not-a-number [] #(1) (expt 10 100)
              0.0 -0.0 -1 -42 1e100 1e-100 -1e-100 -1e100 -inf.0 +inf.0))

    (test-case "nat-below?"
      (defrule (checks res end num ...) (begin (check (nat-below? num end) => res) ...))
      (checks #t 100 0 1 42 99)
      (checks #f 100 100 "foo" 'not-a-number [] #(1) (expt 10 100)
              0.0 -0.0 -1 -42 1e100 1e-100 -1e-100 -1e100 -inf.0 +inf.0))

    (test-case "nat-of-length?"
      (defrule (checks res len num ...) (begin (check (nat-of-length? num len) => res) ...))
      (checks #t 8 0 1 42 99 100 255)
      (checks #f 8 256 257 "foo" 'not-a-number [] #(1) (expt 10 100)
              0.0 -0.0 -1 -42 1e100 1e-100 -1e-100 -1e100 -inf.0 +inf.0))

    (test-case "integer-of-length?"
      (defrule (checks res len num ...) (begin (check (integer-of-length? num len) => res) ...))
      (checks #t 8 -128 127 0 1 42 99 100 127 -1 -42 -99 -100 -127)
      (checks #f 8 -129 128 -255 255 256 257 "foo" 'not-a-number [] #(1) (expt 10 100)
              0.0 -0.0 1e100 1e-100 -1e-100 -1e100 -inf.0 +inf.0))

    (test-case "normalize-nat, normalize-integer"
      (defrule (check-normalize normalize (denormal normal) ...)
        (begin
          (begin
            (check-equal? (normalize normal) normal)
            (check-equal? (normalize denormal) normal)) ...))
      (check-normalize (cut normalize-nat <> 10)
                       (65536 0) (1025 1) (-32001 767))
      (check-normalize (cut normalize-integer <> 10)
                       (65536 0) (1025 1) (-32001 -257)))

    (test-case "for-each-integer"
      (check (with-list-builder (c) (for-each-integer (lambda (x) (c (* x x))) 3 9))
             => '(9 16 25 36 49 64)))

    (test-case "half"
      (defrule (checks (a b) ...) (begin (check (half a) => b) ...))
      (checks (4 2) (3 1) (2 1) (1 0) (0 0) (-1 -1) (-2 -1) (-3 -2) (-4 -2)))

    (test-case "least-integer, most integer"
      (check (least-integer (cut > <> 13.5) 0 20) => 14)
      (check (least-integer true 0 20) => 0)
      (check (least-integer false 0 20) => 20)
      (check (most-integer true 0 20) => 20)
      (check (most-integer false 0 20) => 0)
      (check (most-integer (cut < <> 13.5) 0 20) => 13))

    (test-case "bezout, invert-mod, div-mod, mult-mod"
      (defrule (checks (a b x y d) ...)
        (begin
          (begin (check (values->list (bezout a b)) => [x y d])
                 (check (+ (* a x) (* b y)) => d)
                 (if (zero? d)
                   (check (+ (abs a) (abs b)) => 0)
                   (begin
                     (check (modulo a d) => 0)
                     (check (modulo b d) => 0)
                     (check (div-mod d a b) => x)
                     (check (mult-mod a x b) => d)
                     (when (= d 1)
                       (check (invert-mod a b) => x))))) ...))
      (checks (0 0 1 0 0)
              (250 100 1 -2 50)
              (1984 2023 -415 407 1)))

    (test-case "mult-expt-mod, expt-mod"
      (defrule (checks (v a x e n) ...)
        (begin
          (begin (check (mult-expt-mod a x e n) => v)
                 (check (modulo (* a (expt x e)) n) => v)
                 (when (= a 1) (check (expt-mod x e n) => v))) ...))
      (checks (5548434740920451074 666 2 1000 (1- (expt 2 63))))
      (checks (36028797018963968 1 2 1000 (1- (expt 2 63))))
      (check (expt-mod 11954315054660605640 24 849105756568661461) => 645500962309081550)
      (check (expt-mod 11954315054660605640 -24 849105756568661461) => 649663092802033536)
      (check (mult-mod 645500962309081550 649663092802033536 849105756568661461) => 1))

    (test-case "integer-log"
      (check (integer-log 1 324) => 0)
      (check (integer-log 64 2) => 6)
      (check (integer-log 65 2) => 6)
      (check (integer-log 63 2) => 5)
      (check (integer-log (expt 5 881) 5) => 881))

    (test-case "factor-out-powers-of-2"
      (defrule (checks (n m k) ...)
        (begin
          (begin (check (values->list (factor-out-powers-of-2 n)) => [m k])
                 (check (* m (expt 2 k)) => n)
                 (check (or (odd? m) (zero? n)) => #t)) ...))
      (checks (1000 125 3) ((expt 2 1000) 1 1000)))

    (test-case "factor-out-powers"
      (defrule (checks (a b m k) ...)
        (begin
          (begin (check (values->list (factor-out-powers a b)) => [m k])
                 (check (* m (expt b k)) => a)
                 (check (not (zero? (modulo m b))) => #t)) ...))
      (checks (1000 2 125 3) ((expt 2 1000) 2 1 1000)
              (1000 5 8 3) ((expt 2 1000) 5 (expt 2 1000) 0)
              ((* (expt 3 100) (expt 5 40)) 5 (expt 3 100) 40)))))
