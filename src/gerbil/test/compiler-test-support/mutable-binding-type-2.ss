(import :std/test)
(def *nums* #f)

(def (get-nums)
  (unless *nums*
    (set! *nums* (list->vector (iota 10))))
  *nums*)

(def (foo)
  (let* ((nums (get-nums))
         (len (vector-length nums))
         (i (random-integer len)))
    (vector-ref nums i)))

(def (main)
  (check (foo) ? integer?))
