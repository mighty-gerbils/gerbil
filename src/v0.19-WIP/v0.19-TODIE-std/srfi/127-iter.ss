;;; -*- Gerbil -*-
;;; © vyzo
;;; Iterators for SRFI-127 lazy sequences

(import :std/iter
        :std/srfi/127)
(export in-lseq)

(def (in-lseq ls)
  (def (next it)
    (with ((iterator e) it)
      (if (pair? e)
        (let ((first (car e))
              (rest (lseq-cdr e)))
          (set! (iterator-e it) rest)
          first)
        iter-end)))
  (make-iterator ls next))
