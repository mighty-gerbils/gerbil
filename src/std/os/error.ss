;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS errors

(import :std/foreign
        :std/error)
(export raise-os-error
        check-os-error
        os-error?
        os-error-errno
        OSError OSError?
        do-retry-nonblock
        check-ptr
        foreign-allocation-error?
        strerror
        EAGAIN
        EINTR
        EINPROGRESS
        EWOULDBLOCK
        EBADF
        ECONNABORTED
        ECONNREFUSED
        ECONNRESET)

(deferror-class OSError (errno) os-error?)
(def (raise-os-error errno . irritants)
  (let (err (OSError (strerror errno) irritants: irritants))
    (set! (OSError-errno err) errno)
    (raise err)))
(def os-error-errno OSError-errno)

(deferror-class AllocationError () foreign-allocation-error?)
(def (raise-allocation-error where expr)
  (raise (AllocationError "error allocating memory" where: where irritants: [expr])))

(defrules check-os-error ()
  ((_ expr (prim arg ...))
   (let (r expr)
     (if (not (##fxnegative? r)) r
         (raise-os-error r '(prim arg ...))))))

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
     (if r r (raise-allocation-error 'make '(make arg ...))))))

(begin-ffi (strerror EAGAIN EINTR EINPROGRESS EWOULDBLOCK
                     EBADF ECONNABORTED ECONNREFUSED ECONNRESET)
  (c-declare "#include <errno.h>")
  (c-declare "#include <string.h>")

  (define-const EAGAIN)
  (define-const EINTR)
  (define-const EINPROGRESS)
  (define-const EWOULDBLOCK)
  (define-const EBADF)
  (define-const ECONNABORTED)
  (define-const ECONNREFUSED)
  (define-const ECONNRESET)
  (define-c-lambda strerror (int) char-string))
