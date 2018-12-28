;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/misc/queue test

(import :std/misc/queue
        :std/test)
(export queue-test)

(def queue-test
  (test-suite "test :std/misc/queue"
    (test-case "test queue ops"
      (def q (make-queue))
      (check (queue-empty? q) => #t)
      (enqueue! q 1)
      (enqueue! q 2)
      (enqueue! q 3)
      (check (queue-length q) => 3)
      (check (queue->list q) => '(1 2 3))
      (check (dequeue! q) => 1)
      (check (queue-length q) => 2)
      (check (queue->list q) => '(2 3))
      (check (dequeue! q) => 2)
      (check (queue-length q) => 1)
      (check (queue->list q) => '(3))
      (enqueue! q 4)
      (check (queue-length q) => 2)
      (check (queue->list q) => '(3 4))
      (check (dequeue! q) => 3)
      (check (queue-length q) => 1)
      (check (queue->list q) => '(4))
      (check (dequeue! q) => 4)
      (check (queue-empty? q) => #t)
      (check (queue-length q) => 0)
      (check (queue->list q) => '()))))
