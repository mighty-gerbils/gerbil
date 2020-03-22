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
      (check (filter (pred-limit even? 2) (iota 6 1)) => [2 4])
      (check (filter (pred-limit even? -1) (iota 6 1)) => []))))
