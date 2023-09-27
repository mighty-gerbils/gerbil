;;; -*- Gerbil -*-
;;; :std/misc/atom test

(import :std/misc/atom
        :std/misc/list
        :std/test
        :std/iter)
(export atom-test)

(def atom-test
  (test-suite  "test :std/misc/atom"
    (test-case "test concurrent swap!"
      (def a (atom 0))
      (def workers (for/collect (i (in-range 100)) (spawn atom-swap! a 1+)))
      (for-each thread-join! workers)
      (check-equal? (atom-deref a) 100))
    (test-case "simple changes"
      (def a (atom 3))
      (check-equal? (atom-swap! a (cut * 2 <>)) 6)
      (check-equal? (values->list (atom-swap-values! a (cut * 2 <>))) [6 12])
      (check-equal? (atom-increment! a) 13)
      (check-equal? (atom-increment! a 3) 16)
      (check-equal? (atom-reset! a 23) 23)
      (check-equal? (atom-reset-values! a 42) (values 23 42))
      (check-equal? (atom-compare-and-set! a 42 23) #t)
      (check-equal? (atom-deref a) 23)
      (check-equal? (atom-compare-and-set! a 42 24) #f)
      (check-equal? (atom-deref a) 23)
      (def transitions [])
      (atom-add-watch! a 'record-transitions
                       (lambda (_k _a old new) (push! [new old] transitions)))
      (check-equal? (atom-swap! a (cut + 2 <>)) 25)
      (check-equal? (atom-swap! a (cut + 2 <>)) 27)
      (atom-remove-watch! a 'record-transitions)
      (check-equal? (atom-swap! a (cut + 2 <>)) 29)
      (check-equal? transitions [[27 25][25 23]])
      (def my-counter (atomic-counter))
      (check-equal? (my-counter) 0)
      (check-equal? (my-counter) 1)
      (check-equal? (my-counter) 2)
      (check-equal? (my-counter) 3)
      (check-equal? (my-counter) 4)
      (def other-counter (atomic-counter 42))
      (check-equal? (other-counter) 43)
      (check-equal? (other-counter) 44)
      )))
