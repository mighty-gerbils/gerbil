(export vector-test)

(import
  (only-in :std/list/list-builder with-list-builder)
  :std/test
  ./vector)

(def vector-test
  (test-suite "test suite for std/vector/vector"
    (test-case "vector"
      (def foo (vector 1 2 3))
      (set! (vector-ref foo 1) 4)
      (check foo => #(1 4 3))
      (check (vector-least-index (cut < <> 10) #(35 21 16 11 10 9 7 4 1)) => 5)
      (check (vector-least-index true #(35 21 16 11 10 9 7 4 1)) => 0)
      (check (vector-least-index false #(35 21 16 11 10 9 7 4 1)) => 9)
      (check (vector-least-index positive? #(-10 -6 -2 -1 0 3 8 19)) => 5)
      (check (vector-least-index positive? #(-20 -16 -12 -11 -10 -9 -8 -3)) => 8)
      (check (vector-least-index positive? #(3 8 19 23 42 57 83)) => 0)
      (check (maybe-subvector #(1 3 5 7) 2) => #(5 7))
      (check (eq? foo (maybe-subvector foo 0 3)) => #t)
      (check (with-list-builder (c)
               (subvector-for-each
                c #(a b c d e f g h) start: 2 end: 5))
             => '(c d e))
      (let ((s -10))
        (subvector-for-each (lambda (x) (set! s (+ s x)))
                                   #(1 2 3 4 5 6)
                                   start: 2)
        (check s => 8))
      (check (with-list-builder (c)
               (subvector-for-each/index
                (lambda (x y) (c [x y])) #(a b c d e f g h) start: 5))
             => '((5 f) (6 g) (7 h)))
      (check (with-list-builder (c)
               (subvector-reverse-for-each c #(a b c d e f g h) start: 2 end: 5))
             => '(e d c))
      (check (with-list-builder (c)
               (subvector-reverse-for-each/index
                (lambda (x y) (c [x y])) #(a b c d e f g h) start: 5))
             => '((7 h) (6 g) (5 f)))
      (check (subvector->list #(a b c d e f g h) start: 5)
             => '(f g h))
      (check (cons->vector '(a . b)) => #(a b))
      (check (vector-filter odd? #(1 2 3 4 5 6 7 8 9) start: 1 end: 7)
             => #(3 5 7)))
    (test-case "vector-fold/index"
      ;; kons is (lambda (index acc elt) ...), iterates left to right.
      ;; (+ (* 10 acc) x) encodes digits: left-to-right gives 123 for #(1 2 3).
      (check (vector-fold/index (lambda (i acc x) (+ (* 10 acc) x)) 0 #(1 2 3)) => 123)
      ;; collecting [i x] pairs with cons reverses the list
      (check (vector-fold/index (lambda (i acc x) (cons [i x] acc)) '() #(a b c))
             => '((2 c) (1 b) (0 a)))
      ;; multi-vector: kons is (lambda (index acc elt1 elt2) ...)
      (check (vector-fold/index (lambda (i acc x y) (+ acc (* x y))) 0 #(1 2 3) #(4 5 6)) => 32)
      ;; stops at the length of the shortest vector
      (check (vector-fold/index (lambda (i acc x y) (+ acc x y)) 0 #(1 2 3) #(10 20)) => 33)
      ;; empty vector returns knil unchanged
      (check (vector-fold/index (lambda (i acc x) (error "should not be called")) 42 #()) => 42))
    (test-case "vector-fold-right/index"
      ;; right-to-left: same digit-accumulation gives 321 for #(1 2 3)
      (check (vector-fold-right/index (lambda (i acc x) (+ (* 10 acc) x)) 0 #(1 2 3)) => 321)
      ;; collecting gives forward order (vs fold/index which reverses)
      (check (vector-fold-right/index (lambda (i acc x) (cons [i x] acc)) '() #(a b c))
             => '((0 a) (1 b) (2 c)))
      ;; multi-vector
      (check (vector-fold-right/index (lambda (i acc x y) (+ acc (* x y))) 0 #(1 2 3) #(4 5 6)) => 32)
      ;; empty
      (check (vector-fold-right/index (lambda (i acc x) (error "should not be called")) 99 #()) => 99))
    (test-case "vector-map/index"
      ;; f is (lambda (index elt) ...) for single vector
      (check (vector-map/index * #(1 2 3 4)) => #(0 2 6 12))
      (check (vector-map/index cons #(a b c)) => #((0 . a) (1 . b) (2 . c)))
      ;; multi-vector: f is (lambda (index elt1 elt2) ...)
      (check (vector-map/index list #(a b c) #(1 2 3)) => #((0 a 1) (1 b 2) (2 c 3)))
      ;; stops at length of shortest
      (check (vector-map/index list #(a b c) #(1 2)) => #((0 a 1) (1 b 2)))
      ;; empty
      (check (vector-map/index * #()) => #()))
    (test-case "vector-map!/index"
      ;; mutates first vector in place
      (let ((v (vector 1 2 3 4)))
        (vector-map!/index * v)
        (check v => #(0 2 6 12)))
      ;; multi-vector: first vector receives mapped values
      (let ((v (vector 1 2 3)) (w (vector 10 20 30)))
        (vector-map!/index (lambda (i x y) (+ x y)) v w)
        (check v => #(11 22 33)))
      ;; stops at shortest; only the first two slots of v are updated
      (let ((v (vector 1 2 3)) (w (vector 10 20)))
        (vector-map!/index (lambda (i x y) (+ x y)) v w)
        (check v => #(11 22 3))))
    (test-case "vector-for-each/index"
      ;; f is called left to right with (index elt)
      (let ((acc '()))
        (vector-for-each/index (lambda (i x) (set! acc (cons [i x] acc))) #(a b c))
        (check acc => '((2 c) (1 b) (0 a))))
      ;; multi-vector
      (let ((sum 0))
        (vector-for-each/index (lambda (i x y) (set! sum (+ sum x y))) #(1 2 3) #(4 5 6))
        (check sum => 21))
      ;; stops at shortest
      (let ((n 0))
        (vector-for-each/index (lambda (i x y) (set! n (+ n 1))) #(a b c) #(1 2))
        (check n => 2)))
    (test-case "vector-count/index"
      ;; pred? is (lambda (index elt) ...) for single vector
      (check (vector-count/index (lambda (i x) (= i x)) #(0 1 3 3 4)) => 4)
      (check (vector-count/index (lambda (i x) (even? x)) #(0 1 2 3 4 5)) => 3)
      ;; count by index parity
      (check (vector-count/index (lambda (i x) (even? i)) #(a b c d e f)) => 3)
      ;; multi-vector: pred? is (lambda (index elt1 elt2) ...)
      (check (vector-count/index (lambda (i x y) (= x y)) #(0 1 2 3) #(0 2 2 0)) => 2)
      ;; stops at shortest
      (check (vector-count/index (lambda (i x y) #t) #(a b c) #(1 2)) => 2)
      ;; empty
      (check (vector-count/index (lambda (i x) #t) #()) => 0))))
