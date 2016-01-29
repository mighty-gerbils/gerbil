;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-8: receive
package: std/srfi

(export #t)

(defrules receive ()
  ((_ formals expression body ...)
   (call-with-values (lambda () expression)
     (lambda formals body ...))))

