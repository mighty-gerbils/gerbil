;;; -*- Gerbil -*-
;;; © vyzo
;;; Iterators for SRFI-41 streams

(import :std/generic
        :std/iter
        :std/srfi/41)
(export in-stream)

(defsyntax stream-t
  (make-runtime-struct-info
   runtime-identifier: (quote-syntax stream-type)))

(defmethod (:iter (s stream-t))
  (in-stream s))

(def (in-stream s)
  (def (next it)
    (with ((iterator e) it)
      (if (stream-pair? e)
        (let ((first (stream-car e))
              (rest (stream-cdr e)))
          (set! (iterator-e it) rest)
          first)
        iter-end)))
  (make-iterator s next))
