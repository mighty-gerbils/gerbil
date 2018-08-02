;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS pid
package: std/os

(export getpid getppid)
(extern getpid getppid)
(begin-foreign
  (c-declare "#include <sys/types.h>")
  (c-declare "#include <unistd.h>")

  (define-macro (define-c-lambda id args ret #!optional (name #f))
    (let ((name (or name (##symbol->string id))))
      `(define ,id
         (c-lambda ,args ,ret ,name))))

  (namespace ("std/os/pid#" getpid getppid))

  (define-c-lambda getpid () int)
  (define-c-lambda getppid () int))
