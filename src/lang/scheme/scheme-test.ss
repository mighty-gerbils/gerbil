(import :std/test
        ./base-impl)
(export r7rs-impl-test)

(def r7rs-impl-test
  (test-suite "R7RS scheme implementation tests"
    (test-case "Test division"
      ;; R5RS division -- you can run that on Gambit, Chez, Racket, etc.
      (check-equal?
       (map (lambda (x y) (list (quotient x y) (remainder x y) (modulo x y)))
            '(24 24 -24 -24) '(10 -10 10 -10))
       '((2 4 4) (-2 4 -6) (-2 -4 6) (2 -4 -4)))
      ;; R7RS division -- runs fine on Guile and this Gerbil RnRS.
      (check-equal?
       (map (lambda (x y)
              (list (call-with-values (lambda () (floor/ x y)) list)
                    (floor-quotient x y) (floor-remainder x y)
                    (call-with-values (lambda () (truncate/ x y)) list)
                    (truncate-quotient x y) (truncate-remainder x y)
                    (quotient x y) (remainder x y) (modulo x y)))
            '(24 24 -24 -24) '(10 -10 10 -10))
       '(((2 4) 2 4 (2 4) 2 4 2 4 4)
         ((-3 -6) -3 -6 (-2 4) -2 4 -2 4 -6)
         ((-3 6) -3 6 (-2 -4) -2 -4 -2 -4 6)
         ((2 -4) 2 -4 (2 -4) 2 -4 2 -4 -4))))))
