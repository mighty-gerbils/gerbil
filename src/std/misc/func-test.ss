(export func-test)

(import
  :gerbil/gambit/exceptions
  :std/error :std/misc/func :std/test)

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
      (check-equal? (repeat identity 2 10) '(10 10))
      (check-equal? (repeat 2 -1) '(2)))
    (test-case "test always"
      ;; make sure passed function is called multiple times
      (check-equal?
       (let (fn (always (make-counter)))
	 [(fn) (fn)]) '(1 2))
      (check-equal?
       (let (fn (always identity 'foo))
	 (fn)) 'foo)
      (check-equal?
       (let (fn (always 5)) (fn)) 5))))
