(import :std/test)
(def *nums* #f)

(def (get-nums)
  (unless *nums*
    (set! *nums* (list->vector (iota 10))))
  *nums*)

(def (foo)
  (let* ((nums (get-nums2))
         (len (vector-length nums))
         (i (random-integer len)))
    (vector-ref nums i)))

(def (get-nums2)
  (apply get-nums []))

(def (main)
  (check (foo) ? integer?))
