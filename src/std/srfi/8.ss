;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-8: receive
package: std/srfi

(export #t)

(defrules receive ()
  ((_ formals expr body ...)
   (let-values ((formals expr))
     body ...)))
