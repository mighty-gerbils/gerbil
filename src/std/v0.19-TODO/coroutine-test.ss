;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/coroutine unit-test

(import :std/test
        :std/coroutine)
(export coroutine-test)

(def (1-to-n n)
  (let lp ((i 1))
    (when (<= i n)
      (yield i)
      (lp (1+ i))))
  'end)

(def (collect co)
  (let lp ((r []))
    (let (next (continue co))
      (if (eq? next 'end)
        (reverse r)
        (lp (cons next r))))))

(def coroutine-test
  (test-suite "test :std/coroutine"
    (test-case "test coroutine"
      (check (collect (coroutine 1-to-n 10)) => '(1 2 3 4 5 6 7 8 9 10)))
    (test-case "test cothread"
      (check (collect (cothread 1-to-n 10)) => '(1 2 3 4 5 6 7 8 9 10)))))
