(export sugar-test)

(import :std/test
        :std/pregexp
        :std/sugar)

(def sugar-test
  (test-suite "test :std/sugar"
   (test-case "chain"
    (check-equal?
     ;; expression as input
     (chain (iota 3)
            ([_ . rest] (map 1+ rest))
            (xs (map number->string xs))
            (string-join <> ", "))
     "2, 3")

    (check-equal?
     ;; variable as input
     (let (lst (iota 3))
       (chain lst
              ([_ . rest] (map 1+ rest))
              (xs (map number->string xs))
              (string-join <> ", ")))
     "2, 3")

    (check-equal?
     ;; chain lambda
     ((chain <>
             ([_ . rest] (map 1+ rest))
             (xs (map number->string xs))
             (string-join <> ", "))
      (iota 3))
     "2, 3")

    (check-equal?
      ;; unary procedure at the start
      (let (map1 (cut map 1+ <>))
        (chain [1 2]
          map1
          (reverse <>)))
      [3 2])

    (check-equal?
      ;; unary procedure not at the start
      (chain [9 19 29]
        ([_ . rest] (map 1+ rest))
        reverse
        car)
      30)

    (check-equal? (chain [0 1] (map (lambda (v) (1+ v)) <>)) [1 2]))
   (test-case "test is"
    (check ((is 1+ 3) 2)                => #t)
    (check ((is 1+ number?) 0)          => #t)
    (check ((is symbol->string "a") 'a) => #t)
    (check ((is 1+ 3 test: eqv?) 2)     => #t)
    (check ((is 2) 2)                   => #t)
    (check ((is 'a test: eq?) 'a)       => #t)
    (check ((is 2.0) 2.0)               => #t)
    (check ((is "a") "a")               => #t))
   ))
