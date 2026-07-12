;;; -*- Gerbil -*-
;;; © fare
;;; :std/sync/wg test
(import :std/test
        :std/error
        :std/iter
        ./wg)
(export wg-test)

(def wg-test
  (test-suite "test :std/sync/wg"
    (test-case "nil wg: add runs thunk directly, wait is no-op"
      (def ran #f)
      (wg-add! #f (lambda () (set! ran #t)))
      (check ran => #t)
      (check (wg-wait! #f) => (void)))

    (test-case "basic: tasks complete before wg-wait! returns"
      (def mx (make-mutex))
      (def results [])
      (def wg (make-wg 2))
      (for (i (in-range 10))
        (wg-add! wg (lambda ()
                      (mutex-lock! mx)
                      (set! results (cons i results))
                      (mutex-unlock! mx))))
      (wg-wait! wg)
      (check (length results) => 10))

    (test-case "single worker: tasks run sequentially"
      (def order [])
      (def wg (make-wg 1))
      (for (i (in-range 5))
        (let (j i)
          (wg-add! wg (lambda () (set! order (cons j order))))))
      (wg-wait! wg)
      ;; single worker → FIFO order; reverse because we consed
      (check (reverse order) => '(0 1 2 3 4)))

    (test-case "wg-wait! propagates worker exception"
      (def wg (make-wg 2))
      (wg-add! wg (lambda () (with-catch ##thread-end-with-uncaught-exception!
                                         (cut error "boom" 42))))
      (check-exception (wg-wait! wg)
                       (lambda (e) (and (Error? e) (equal? (error-message e) "boom")))))

    (test-case "many workers, many tasks: all complete"
      (def count 0)
      (def mx (make-mutex))
      (def wg (make-wg 4))
      (for (_ (in-range 100))
        (wg-add! wg (lambda ()
                      (mutex-lock! mx)
                      (set! count (fx+ count 1))
                      (mutex-unlock! mx))))
      (wg-wait! wg)
      (check count => 100))))
