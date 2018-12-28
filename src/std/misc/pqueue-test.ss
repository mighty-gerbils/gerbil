;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/misc/pqueue test

(import :std/misc/pqueue
        :std/test)
(export pqueue-test)

(def pqueue-test
  (test-suite "test :std/misc/pqueue"
    (test-case "test pqueue ops"
      (def pq (make-pqueue cdr))
      (check (pqueue-empty? pq) => #t)
      (check (pqueue-size pq) => 0)
      (pqueue-push! pq ['a . 1])
      (pqueue-push! pq ['b . 5])
      (pqueue-push! pq ['c . 3])
      (pqueue-push! pq ['d . 2])
      (pqueue-push! pq ['e . 4])
      (check (pqueue-empty? pq) => #f)
      (check (pqueue-size pq) => 5)
      (check (pqueue-pop! pq) => ['a . 1])
      (check (pqueue-pop! pq) => ['d . 2])
      (check (pqueue-pop! pq) => ['c . 3])
      (pqueue-push! pq ['f . 3])
      (pqueue-push! pq ['g . 6])
      (check (pqueue-size pq) => 4)
      (check (pqueue-pop! pq) => ['f . 3])
      (check (pqueue-pop! pq) => ['e . 4])
      (check (pqueue-pop! pq) => ['b . 5])
      (check (pqueue-pop! pq) => ['g . 6])
      (check (pqueue-empty? pq) => #t))))
