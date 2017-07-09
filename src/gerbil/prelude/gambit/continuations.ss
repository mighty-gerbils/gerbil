;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: continuations
package: gerbil/gambit

(export #t)
(extern namespace: #f
  continuation? continuation-capture continuation-graft continuation-return
  display-exception-in-context display-procedure-environment
  display-continuation-environment
  display-continuation-dynamic-environment
  display-continuation-backtrace
  )
