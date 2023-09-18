(export sugar-test)

(import :std/test
        :std/misc/number
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

    (test-case "with-id, defining variables"
      (def mem (make-vector 5 0))
      (defrule (defvar name n)
        (with-id name ((@ #'name "@") (get #'name) (set #'name "-set!"))
          (begin (def @ n) (def (get) (vector-ref mem @)) (def (set x) (vector-set! mem @ x)))))
      (defvar A 0)
      (defvar B 1)
      (defvar C 2)
      (defvar D 3)
      (A-set! 42) (B-set! (+ (A) 27)) (increment! (C) 5) (D-set! (post-increment! (C) 18))
      (check-equal? mem #(42 69 23 5 0)))
    (test-case "with-id, variable resolution in macro"
      (check-exception
       (eval '(begin
                (defsyntax (m stx)
                  (def myvar "bar")
                  #'(with-id ctx ((foo my-var)) (def foo 2)))
                (m)))
       true)
      (defsyntax (m stx)
        (with-syntax ((ctx (stx-car stx))
                      (myvar "bar"))
          #'(with-id ctx ((foo #'myvar)) (def foo 3))))
      (m)
      (check-equal? bar 3))))
