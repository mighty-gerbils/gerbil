;;; -*- Gerbil -*-
;;; © vyzo
;;; Iterators for SRFI-41 streams
package: std/srfi

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
  (def (value it)
    (let (e (iterator-e it))
      (if (stream-pair? e)
        (stream-car e)
        iter-end)))
  (def (next it)
    (set! (iterator-e it)
      (stream-cdr (iterator-e it))))
  (make-iterator s void value next))
