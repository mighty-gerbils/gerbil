;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-145: Assumptions

(export assume)

(defrules assume ()
  ((_ expr message ...)
   (let (val expr)
     (if val val (error message ...)))))
