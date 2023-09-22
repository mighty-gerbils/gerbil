;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/misc/completion test

(import :gerbil/gambit
        :std/test
        ./completion)
(export completion-test)

(def completion-test
  (test-suite "test :std/misc/completion"
    (test-case "test completion wait"
      (def c (make-completion))
      (def thr (spawn completion-post! c 'done))
      (check (completion-wait! c) => 'done))
    (test-case "test completion error"
      (def c (make-completion 'error-test))
      (def thr (spawn completion-error! c 'fail))
      (check-exception (completion-wait! c) (cut eq? <> 'fail)))))
