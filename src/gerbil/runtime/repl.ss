;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil runtime repl utilities
prelude: "../prelude/core"
package: gerbil/runtime
namespace: #f

(import "error")

;; introspection repl: this is part of the runtime so that it is
;; available to all binaries.
;; Starts a nested repl with an exception handler that nests a repl
;; within, so that it can handle introspection exceptions regardless of
;; exception handler in the inspsected thread
(define (replx)
  (define (write-reason exn)
    (lambda (cont port)
      (##display-exception-in-context exn cont port)
      #f))

  (with-exception-handler
   (lambda (exn)
     (##continuation-capture
      (lambda (cont)
        (##repl-within cont (write-reason exn) exn))))
   ##repl))
