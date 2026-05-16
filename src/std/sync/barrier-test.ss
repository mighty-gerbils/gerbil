;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/misc/barrier test

(import :std/test
        ./barrier)
(export barrier-test)

(def barrier-test
  (test-suite "test :std/misc/barrier"
    (test-case "test barrier wait"
      (def b (make-barrier 2))
      (def thr1 (spawn barrier-post! b))
      (def thr2 (spawn barrier-post! b))
      (check (barrier-wait! b) => (void)))
    (test-case "test barrier error"
      (def b (make-barrier 2))
      (def thr (spawn barrier-error! b 'fail))
      (check-exception (barrier-wait! b) (cut eq? <> 'fail)))))
