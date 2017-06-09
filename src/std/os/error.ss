;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS errors
package: std/os

(export raise-os-error
        check-os-error
        do-retry-nonblock)

(def (raise-os-error errno prim . args)
  (apply ##raise-os-exception (strerror errno) errno prim args))

(defrules check-os-error ()
  ((_ expr (prim arg ...))
   (let (r expr)
     (if (not (fxnegative? r)) r
         (raise-os-error (fx- r) prim arg ...)))))

(defrules do-retry-nonblock ()
  ((_ expr (prim arg ...))
   (let lp ()
     (let (r expr)
       (if (not (fxnegative? r)) r
           (let (errno (fx- r))
             (cond
              ((eq? errno EAGAIN) #f)
              ((eq? errno EINTR) (lp))
              (else
               (raise-os-error errno prim arg ...)))))))))

(extern strerror EAGAIN EINTR)
(begin-foreign
  (c-declare "#include <errno.h>")
  (c-declare "#include <string.h>")

  (define-macro (define-c-lambda id args ret #!optional (name #f))
    (let ((name (or name (##symbol->string id))))
      `(define ,id
         (c-lambda ,args ,ret ,name))))

  (define-macro (define-const symbol)
    (let* ((str (##symbol->string symbol))
           (ref (##string-append "___return (" str ");")))
      `(define ,symbol
         ((c-lambda () int ,ref)))))

  (namespace ("std/os/error#" strerror EAGAIN EINTR))

  (define-const EAGAIN)
  (define-const EINTR)
  (define-c-lambda strerror (int) char-string))




