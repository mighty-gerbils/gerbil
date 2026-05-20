; Implementation of the structure parser-errors-vanilla
; for systems other than Scheme48 and PLT Scheme
; $Id: parser-errors-vanilla.scm,v 1.1 2004/08/06 23:01:09 oleg Exp $

(define (parser-error port message . rest)
  (apply error message rest))
