(export func-test)

(import :std/misc/func :std/test)

(def (make-counter)
  (let (x 0)
    (lambda ()
      (set! x (1+ x))
      x)))

(def func-test
  (test-suite "test :std/misc/func"
    (test-case "test repeat"
      (check-equal? (repeat 2 3) '(2 2 2))
      (check-equal? (repeat (make-counter) 2) '(1 2))
      (check-equal? (repeat identity 2 10) '(10 10)))
    (test-case "test always"
      ;; make sure passed function is called multiple times
      (check-equal?
       (let (fn (always (make-counter)))
	     [(fn) (fn)]) '(1 2))
      (check-equal?
       (let (fn (always identity 'foo))
	     (fn)) 'foo)
      (check-equal?
       (let (fn (always 5)) (fn)) 5))
    (test-case "test function composition"
      (check ((compose1 1+ (cut * <> 2)) 1) => 3)
      (check ((compose1 1- 1+ (cut * <> 2)) 1) => 2)
      (check ((compose 1+ *) 1 2) => 3)
      (check ((compose 1- 1+ *) 1 2) => 2)
      (check ((compose/values * (cut values 1 2))) => 2)
      (check ((compose/values 1+ * (cut values 1 2))) => 3)
      (check ((rcompose1 (cut * <> 2) 1+) 1) => 3)
      (check ((rcompose1 (cut * <> 2) 1+ 1-) 1) => 2)
      (check ((rcompose * 1+) 1 2) => 3)
      (check ((rcompose * 1+ 1-) 1 2) => 2)
      (check ((rcompose/values (cut values 1 2) *)) => 2)
      (check ((rcompose/values (cut values 1 2) * 1+)) => 3))
    (test-case "test function composition macros"
      (check ((@compose1 1+ (cut * <> 2)) 1) => 3)
      (check ((@compose1 1- 1+ (cut * <> 2)) 1) => 2)
      (check ((@compose 1+ *) 1 2) => 3)
      (check ((@compose 1- 1+ *) 1 2) => 2)
      (check ((@compose/values * (cut values 1 2))) => 2)
      (check ((@compose/values 1+ * (cut values 1 2))) => 3)
      (check ((@rcompose1 (cut * <> 2) 1+) 1) => 3)
      (check ((@rcompose1 (cut * <> 2) 1+ 1-) 1) => 2)
      (check ((@rcompose * 1+) 1 2) => 3)
      (check ((@rcompose * 1+ 1-) 1 2) => 2)
      (check ((@rcompose/values (cut values 1 2) *)) => 2)
      (check ((@rcompose/values (cut values 1 2) * 1+)) => 3))
    (test-case "test pred-limit"
      (check (filter (pred-limit even? 2) (iota 6 1))  => [2 4])
      (check (filter (pred-limit even? 0) (iota 6 1))  => [])
      (check (filter (pred-limit even? #f) (iota 6 1)) => [2 4 6]))
    (test-case "test pred-sequence"
      (let (fn (pred-sequence [1 2]))
        (check (fn 1)  => #f)
        (check (fn 2)  => #t))
      (let (fn (pred-sequence []))
        (check (fn 1)  => #f)
        (check (fn 2)  => #f))
      (check (filter (pred-sequence [1 2]) [1 2 'a 1 2]) => '(2 2))
      (check (filter (pred-sequence [2] 1) [1 2 1 2]) => '(2)))
    (test-case "test pred-and"
     (check (let (fn (pred-and number?)) (fn 10) (fn 20)) => #t)
     (check (let (fn (pred-and number?)) (fn 'a) (fn 10)) => #f))
    (test-case "test pred-or"
     (check (let (fn (pred-or number?)) (fn 'a) (fn 20)) => #t)
     (check (let (fn (pred-or number?)) (fn 'a) (fn 'b)) => #f))
    (test-case "test every-of"
      (check (every-of [] 1)                    => #t)
      (check (every-of [number? fixnum?] 1)     => #t)
      (check (every-of ["a" string?] "a")       => #t)
      (check (every-of [1 number? 9] 1 test: =) => #f))
    (test-case "test any-of"
      (check (any-of [] 1)                      => #f)
      (check (any-of [number? symbol?] 'a)      => #t)
      (check (any-of ['a 'b 'c] 'b)             => #t)
      (check (any-of ['a 'b] 'z test: eq?)      => #f))
    (test-case "test pred-every-of"
      (check ((pred-every-of []) 1) => #t)
      (check ((pred-every-of [string? "a"] test: string=?) "a") => #t))
    (test-case "test pred-any-of"
      (check ((pred-any-of []) 1) => #f)
      (check ((pred-any-of ['a 'b] test: eq?) 'b) => #t))
    ))
