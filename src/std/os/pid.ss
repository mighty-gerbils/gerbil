;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS pid
package: std/os

(import :std/foreign)
(export getpid getppid)

(begin-ffi (getpid getppid)
  (c-declare "#include <sys/types.h>")
  (c-declare "#include <unistd.h>")

  (define-c-lambda getpid () int)
  (define-c-lambda getppid () int))
