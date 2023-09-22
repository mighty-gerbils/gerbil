;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;;     fare
;;; :std/misc/number test

(import :std/test
        (only-in :std/sugar try catch defrule)
        :std/error
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

    (test-case "integer-log"
      (check (integer-log 1 324) => 0)
      (check (integer-log 64 2) => 6)
      (check (integer-log 65 2) => 6)
      (check (integer-log 63 2) => 5)
      (check (integer-log (expt 5 881) 5) => 881))

    (test-case "expt-mod"
      (check (expt-mod 11954315054660605640 24 849105756568661461) => 645500962309081550)
      #;(check (expt-mod 11954315054660605640 -24 849105756568661461) => ))))
