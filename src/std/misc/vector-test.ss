(export vector-test)

(import
  (only-in :std/misc/list-builder with-list-builder)
  :std/test
  ./vector)

(def vector-test
  (test-suite "test suite for std/misc/vector"
    (test-case "vector"
      (def foo (vector 1 2 3))
      (set! (vector-ref foo 1) 4)
      (check foo => #(1 4 3))
      (check (vector-least-index (cut < 10) #(35 21 16 11 10 9 7 4 1)) => 5)
      (check (vector-most-index (cut < 10) #(2 3 5 7 11 13 17 19 23)) => 4)
      (check (maybe-subvector #(1 3 5 7) 2) => #(5 7))
      (check (eq? foo (maybe-subvector foo 0 3)) => #t)
      (check (with-list-builder (c)
               (subvector-for-each
                c #(a b c d e f g h) start: 2 end: 5))
             => '(c d e))
      (check (with-list-builder (c)
               (subvector-for-each/index
                (lambda (x y) (c [x y])) #(a b c d e f g h) start: 5))
             => '((f 5) (g 6) (h 7)))
      (check (with-list-builder (c)
               (subvector-reverse-for-each c #(a b c d e f g h) start: 2 end: 5))
             => '(e d c))
      (check (with-list-builder (c)
               (subvector-reverse-for-each/index
                (lambda (x y) (c [x y])) #(a b c d e f g h) start: 5))
             => '((h 7) (g 6) (f 5)))
      (check (subvector->list #(a b c d e f g h) start: 5)
             => '(c d e))
      (check (cons->vector '(a . b))
             => #(a b))
      (check (cons->vector 'foo)
             => #f)
      (check (vector-filter odd? #(1 2 3 4 5 6 7 8 9) start: 1 end: 7)
             => #(3 5 7))
    ))
