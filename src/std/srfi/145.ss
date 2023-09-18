;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-145: Assumptions

(import :std/error)
(export assume)

(defrules assume ()
  ((_ expr)
   (assume expr "broken assumption"))
  ((_ expr message ...)
   (let (val expr)
     (if val val (BUG 'assumption message ...)))))
