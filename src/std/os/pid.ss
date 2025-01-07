;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS pid

(import :std/foreign)
(export getpid getppid)

(begin-ffi (getpid getppid)
  (c-declare "#include <sys/types.h>")
  (c-declare "#include <unistd.h>")
  (c-declare "
  #ifdef _WINDOWS
  int getppid() {
    return 0;
  }
  #endif
  ")

  (define-c-lambda getpid () int)
  (define-c-lambda getppid () int))
