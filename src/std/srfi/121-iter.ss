;;; -*- Gerbil -*-
;;; © vyzo
;;; Iterators for SRFI-121 generators
package: std/srfi

(import :std/iter
        :std/srfi/121)
(export in-generator)

(def (in-generator g)
  (def (value it)
    (with ((iterator e) it)
      (when (iter-nil? (car e))
        (let* ((v ((cdr e)))
               (v (if (eof-object? v) iter-end v)))
          (set! (car e) v)))
      (car e)))
  (def (next it)
    (with ((iterator e) it)
      (set! (car e) iter-nil)))
  (make-iterator (cons iter-nil g) void value next))
