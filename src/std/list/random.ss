;;; -*- Gerbil -*-
;;; © vyzo
;;; list random access
(export #t)

(def (list-random-ref (lst : :pair))
  (let* ((len (length lst))
         (idx (random-integer len)))
    (list-ref lst idx)))

;; TODO shuffle
