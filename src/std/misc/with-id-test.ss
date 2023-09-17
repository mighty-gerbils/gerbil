(export with-id-test)

(import
  :std/srfi/13
  :std/misc/number
  :std/misc/string
  :std/sugar
  :std/stxutil
  :std/test
  :std/error
  ./with-id)

(def with-id-test
  (test-suite "test suite for std/misc/with-id"
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
