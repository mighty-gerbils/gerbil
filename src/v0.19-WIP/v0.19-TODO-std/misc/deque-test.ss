;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/misc/deque test

(import :std/misc/deque
        :std/test)
(export deque-test)

(def deque-test
  (test-suite "test :std/misc/deque"
    (test-case "test deque ops"
      (def dq (make-deque))
      (check (deque-empty? dq) => #t)
      (push-back! dq 1)
      (push-back! dq 2)
      (push-back! dq 3)
      (check (deque-empty? dq) => #f)
      (check (deque-length dq) => 3)
      (check (deque->list dq) => '(1 2 3))
      (check (pop-front! dq) => 1)
      (check (deque->list dq) => '(2 3))
      (check (pop-back! dq) => 3)
      (check (deque->list dq) => '(2))
      (check (deque-length dq) => 1)
      (check (pop-front! dq) => 2)
      (check (deque->list dq) => '())
      (check (deque-length dq) => 0)
      (check (deque-empty? dq) => #t))))