;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS pipes
package: std/os

(import :std/foreign
        :std/os/error
        :std/os/fd
        :std/os/fcntl)
(export #t)

;; FFI


(def (pipe)
  (let* ((ptr (make_pipe_ptr))
         (_ (check-os-error (_pipe ptr) (pipe)))
         (ifd (pipe_ptr_ref ptr 0))
         (ofd (pipe_ptr_ref ptr 1))
         (in (fdopen ifd 'in 'pipe))
         (out (fdopen ofd 'out 'pipe)))
    (fd-set-nonblock/closeonexec in)
    (fd-set-nonblock/closeonexec out)
    (values in out)))

(begin-ffi (_pipe make_pipe_ptr pipe_ptr_ref)
  (c-declare "#include <errno.h>")
  (c-declare "#include <unistd.h>")

  (define-macro (define-with-errno symbol ffi-symbol args)
    `(define (,symbol ,@args)
       (declare (not interrupts-enabled))
       (let ((r (,ffi-symbol ,@args)))
         (if (##fx< r 0)
           (##fx- (__errno))
           r))))

  (namespace ("std/os/pipe#" __pipe __errno pipe*))

  (c-define-type pipe*
    (pointer int (pipe*) "ffi_free"))

  (define-c-lambda __errno () int
    "___return (errno);")

  (define-c-lambda __pipe (pipe*) int
    "pipe")
  (define-with-errno _pipe __pipe (pipe-ptr))

  (define-c-lambda make_pipe_ptr () pipe*
    "___return ((int*)malloc (2 * sizeof (int)));")
  (define-c-lambda pipe_ptr_ref (pipe* int) int
    "___return (___arg1[___arg2]);"))
