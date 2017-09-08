;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil static executable module stub
(##namespace (""))
(declare
  (block)
  (standard-bindings)
  (extended-bindings))

(define (__gx#display-exception e port)
  (cond
   ((method-ref e 'display-exception)
    => (lambda (f) (f e port)))
   (else
    (##default-display-exception e port))))

(set! ##display-exception-hook __gx#display-exception)
