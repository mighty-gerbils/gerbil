;;; -*- Gerbil -*-
;;; © vyzo
;;; Iterators for SRFI-127 lazy sequences
package: std/srfi

(import :std/iter
        :std/srfi/127)
(export in-lseq)

(def (in-lseq ls)
  (def (value it)
    (with ((iterator e) it)
      (if (pair? e)
        (car e)
        iter-end)))
  (def (next it)
    (set! (iterator-e it) (lseq-cdr (iterator-e it))))
  (make-iterator ls void value next))
