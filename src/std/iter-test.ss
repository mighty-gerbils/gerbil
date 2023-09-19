;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/iter unit-tests

(import :std/test
        :std/error
        :std/iter
        (only-in :std/sugar hash)
        (only-in :gerbil/core error-object? with-catch))
(export iter-test)

(def (my-generator n)
  (lambda ()
    (let lp ((k 0))
      (when (< k n)
        (yield k)
        (lp (1+ k))))))

(def iter-test
  (test-suite "test :std/iter"
    (test-case "test imperative for"
      (def (test-for-1)
        (for (x '(1 2 3))
          (displayln x)))
      (check-output (test-for-1) "1\n2\n3\n")

      (def (test-for-2)
        (for ((x '(1 2 3))
              (y '#(a b c d)))
          (displayln x " " y)))
      (check-output (test-for-2) "1 a\n2 b\n3 c\n")

      (def (test-for-3-in-iota)
        (for (x (in-iota 3))
          (displayln x)))
      (check-output (test-for-3-in-iota) "0\n1\n2\n")

      (def (test-for-3-in-range)
        (for (x (in-range 3))
          (displayln x)))
      (check-output (test-for-3-in-range) "0\n1\n2\n")

      (def (test-for-4-in-iota)
        (for (x (in-iota 4 3))
          (displayln x)))
      (check-output (test-for-4-in-iota) "3\n4\n5\n6\n")

      (def (test-for-4-in-range)
        (for (x (in-range 4 7))
          (displayln x)))
      (check-output (test-for-4-in-range) "4\n5\n6\n")

      (def (test-for-5-in-iota)
        (for (x (in-iota 3 5 2))
          (displayln x)))
      (check-output (test-for-5-in-iota) "5\n7\n9\n")

      (def (test-for-5-in-range)
        (for (x (in-range 5 10 2))
          (displayln x)))
      (check-output (test-for-5-in-range) "5\n7\n9\n")

      (def (test-for-6-in-range-by-neg)
        (for (x (in-range 7 4 -1))
          (displayln x)))
      (check-output (test-for-6-in-range-by-neg) "7\n6\n5\n")

      (def (test-for-7)
        (for (x (my-generator 3))
          (displayln x)))
      (check-output (test-for-7) "0\n1\n2\n")

      (def (test-for-8-not-real)
        (for (x (in-range (hash (a 1) (b 2) (c 3))))
          (displayln x)))
      (check-exception (test-for-8-not-real) type-exception?))

    (test-case "test folding macros"
      (def (test-for/collect-0)
        (for/collect ((x '(1 2 3)))
          (* x 2)))
      (check (test-for/collect-0) => '(2 4 6))

      (def (test-for/collect-1)
        (for/collect ((x '(1 2 3))
                      (y '#(a b c d)))
          (cons x y)))
      (check (test-for/collect-1) => '((1 . a) (2 . b) (3 . c)))

      (def (test-for/collect-2-0)
        (for/collect ((x (in-naturals))
                      (y '#(a b c d)))
          (cons x y)))
      (check (test-for/collect-2-0) => '((0 . a) (1 . b) (2 . c) (3 . d)))

      (def (test-for/collect-2-1)
        (for/collect ((x (in-naturals 1))
                      (y '#(a b c d)))
          (cons x y)))
      (check (test-for/collect-2-1) => '((1 . a) (2 . b) (3 . c) (4 . d)))

      (def (test-for/collect-3)
        (for/collect (x (my-generator 3)) x))
      (check (test-for/collect-3) => '(0 1 2))

      (def (test-for/collect-4-up-by-neg)
        (for/collect (x (in-range 3 5 -1)) x))
      (check (test-for/collect-4-up-by-neg) => '())

      (def (test-for/collect-4-down-by-pos)
        (for/collect (x (in-range 5 3 1)) x))
      (check (test-for/collect-4-down-by-pos) => '())

      (def (test-for/collect-5-down-inference-neg)
        (for/collect (x (in-range 5 3)) x))
      (check (test-for/collect-5-down-inference-neg) => '(5 4))

      (def (test-for/collect-6-same-start-end)
        (for/collect (x (in-range 5 5)) x))
      (check (test-for/collect-6-same-start-end) => '())

      (def (test-for/fold-1)
        (for/fold (r []) ((x '(1 2 3)))
          (cons x r)))
      (check (test-for/fold-1) => '(3 2 1))

      (def (test-for/fold-2)
        (for/fold (r []) ((x '(1 2 3)) (y '#(a b c d)))
          (cons* x y r)))
      (check (test-for/fold-2) => '(3 c 2 b 1 a)))

    (test-case "test iter xforms"
      (def (test-xform-when)
        (for/collect (x (in-range 5) when (odd? x)) x))
      (check (test-xform-when) => '(1 3))

      (def (test-xform-unless)
        (for/collect (x (in-range 5) unless (odd? x)) x))
      (check (test-xform-unless) => '(0 2 4)))

    (test-case "test iter filters"
      (def (test-filter-when1)
        (for/collect ((x (in-range 5)) when (odd? x))
          x))
      (check (test-filter-when1) => '(1 3))

      (def (test-filter-when2)
        (for/collect ((x (in-range 5)) (y '(a b c d e)) when (odd? x))
          (cons x y)))
      (check (test-filter-when2) => '((1 . b) (3 . d)))

      (def (test-filter-when3)
        (for/fold (r []) ((x (in-range 5)) when (odd? x))
          (cons x r)))
      (check (test-filter-when3) => '(3 1))

      (def (test-filter-when4)
        (for/fold (r []) ((x (in-range 5)) (y '(a b c d e)) when (odd? x))
          (cons (cons x y) r)))
      (check (test-filter-when4) => '((3 . d) (1 . b)))

      (def (test-for-when5)
        (for ((x (in-range 5)) when (odd? x))
          (displayln x)))
      (check-output (test-for-when5) "1\n3\n")

      (def (test-for-when6)
        (for ((x (in-range 5))
              (y '(a b c d e))
              when (odd? x))
          (displayln x " " y)))
      (check-output (test-for-when6) "1 b\n3 d\n")

      (def (test-filter-unless1)
        (for/collect ((x (in-range 5)) unless (odd? x))
          x))
      (check (test-filter-unless1) => '(0 2 4))

      (def (test-filter-unless2)
        (for/collect ((x (in-range 5)) (y '(a b c d e)) unless (odd? x))
          (cons x y)))
      (check (test-filter-unless2) => '((0 . a) (2 . c) (4 . e)))

      (def (test-filter-unless3)
        (for/fold (r []) ((x (in-range 5)) unless (odd? x))
          (cons x r)))
      (check (test-filter-unless3) => '(4 2 0))

      (def (test-filter-unless4)
        (for/fold (r []) ((x (in-range 5)) (y '(a b c d e)) unless (odd? x))
          (cons (cons x y) r)))
      (check (test-filter-unless4) => '((4 . e) (2 . c) (0 . a)))

      (def (test-for-unless5)
        (for ((x (in-range 5)) unless (odd? x))
          (displayln x)))
      (check-output (test-for-unless5) "0\n2\n4\n")

      (def (test-for-unless6)
        (for ((x (in-range 5))
              (y '(a b c d e))
              unless (odd? x))
          (displayln x " " y)))
      (check-output (test-for-unless6) "0 a\n2 c\n4 e\n"))))
