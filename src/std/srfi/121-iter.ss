;;; -*- Gerbil -*-
;;; © vyzo
;;; Iterators for SRFI-121 generators

(import :std/iter
        :std/srfi/121)
(export in-generator)

(def (in-generator g)
  (def (next it)
    (with ((iterator e) it)
      (let (v (e))
        (if (eof-object? v)
          iter-end
          v))))
  (make-iterator e: g next: next))
