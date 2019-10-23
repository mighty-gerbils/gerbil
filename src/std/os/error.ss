;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS errors

(import :std/foreign)
(export raise-os-error
        check-os-error
        do-retry-nonblock
        check-ptr
        strerror
        EAGAIN
        EINTR
        EINPROGRESS
        EWOULDBLOCK)

(def (raise-os-error errno prim . args)
  (apply ##raise-os-exception (strerror errno) errno prim args))

(defrules check-os-error ()
  ((_ expr (prim arg ...))
   (let (r expr)
     (if (not (##fxnegative? r)) r
         (raise-os-error (##fx- r) prim arg ...)))))

(defrules do-retry-nonblock ()
  ((_ expr (prim arg ...) ERRNO ...)
   (let lp ()
     (let (r expr)
       (if (not (##fxnegative? r)) r
           (let (errno (##fx- r))
             (cond
              ((or (eq? errno ERRNO) ...)
               #f)
              ((eq? errno EINTR)
               (lp))
              (else
               (raise-os-error errno prim arg ...)))))))))

(defrules check-ptr ()
  ((_ (make arg ...))
   (let (r (make arg ...))
     (if r r
         (error "Error allocating memory" 'make)))))

(begin-ffi (strerror EAGAIN EINTR EINPROGRESS EWOULDBLOCK)
  (c-declare "#include <errno.h>")
  (c-declare "#include <string.h>")

  (define-const EAGAIN)
  (define-const EINTR)
  (define-const EINPROGRESS)
  (define-const EWOULDBLOCK)
  (define-c-lambda strerror (int) char-string))
