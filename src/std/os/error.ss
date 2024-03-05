;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS errors

(import :std/foreign
        :std/error
        :std/sugar)
(export raise-os-error
        check-os-error
        os-error?
        os-error-errno
        OSError OSError?
        do-retry-nonblock
        check-ptr
        foreign-allocation-error?
        strerror
        E2BIG
        EACCES
        EAGAIN
        EBADF
        EBUSY
        ECHILD
        ECONNABORTED
        ECONNREFUSED
        ECONNRESET
        EDOM
        EEXIST
        EFAULT
        EFBIG
        EINPROGRESS
        EINTR
        EINVAL
        EIO
        EISDIR
        EMFILE
        EMLINK
        ENFILE
        ENODEV
        ENOENT
        ENOEXEC
        ENOMEM
        ENOSPC
        ENOTBLK
        ENOTDIR
        ENOTTY
        ENXIO
        EPERM
        EPIPE
        ERANGE
        EROFS
        ESPIPE
        ESRCH
        ETXTBSY
        EWOULDBLOCK
        EXDEV)

(deferror-class OSError (errno) os-error?)
(defrule (raise-os-error where errno irritants ...)
  (let* ((errno (if (fx< errno 0) (fx- errno) errno))
         (err (OSError (strerror errno) where: (exception-context where) irritants: ['where irritants ...])))
    (set! (OSError-errno err) errno)
    (raise err)))
(def os-error-errno OSError-errno)

(deferror-class AllocationError () foreign-allocation-error?)
(defraise/context (raise-allocation-error where expr)
  (AllocationError "error allocating memory" irritants: [expr]))

(defrules check-os-error ()
  ((_ expr (prim arg ...))
   (let (r expr)
     (if (not (##fxnegative? r)) r
         (raise-os-error prim r arg ...)))))

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
               (raise-os-error prim errno arg ...)))))))))

(defrules check-ptr ()
  ((_ (make arg ...))
   (let (r (make arg ...))
     (if r r (raise-allocation-error make '(make arg ...))))))

(begin-ffi (strerror
            E2BIG
            EACCES
            EAGAIN
            EBADF
            EBUSY
            ECHILD
            ECONNABORTED
            ECONNREFUSED
            ECONNRESET
            EDOM
            EEXIST
            EFAULT
            EFBIG
            EINPROGRESS
            EINTR
            EINVAL
            EIO
            EISDIR
            EMFILE
            EMLINK
            ENFILE
            ENODEV
            ENOENT
            ENOEXEC
            ENOMEM
            ENOSPC
            ENOTBLK
            ENOTDIR
            ENOTTY
            ENXIO
            EPERM
            EPIPE
            ERANGE
            EROFS
            ESPIPE
            ESRCH
            ETXTBSY
            EWOULDBLOCK
            EXDEV)
  (c-declare "#include <errno.h>")
  (c-declare "#include <string.h>")

  (define-const EPERM)
  (define-const ENOENT)
  (define-const ESRCH)
  (define-const EINTR)
  (define-const EIO)
  (define-const ENXIO)
  (define-const E2BIG)
  (define-const ENOEXEC)
  (define-const EBADF)
  (define-const ECHILD)
  (define-const EAGAIN)
  (define-const ENOMEM)
  (define-const EACCES)
  (define-const EFAULT)
  (define-const ENOTBLK)
  (define-const EBUSY)
  (define-const EEXIST)
  (define-const EXDEV)
  (define-const ENODEV)
  (define-const ENOTDIR)
  (define-const EISDIR)
  (define-const EINVAL)
  (define-const ENFILE)
  (define-const EMFILE)
  (define-const ENOTTY)
  (define-const ETXTBSY)
  (define-const EFBIG)
  (define-const ENOSPC)
  (define-const ESPIPE)
  (define-const EROFS)
  (define-const EMLINK)
  (define-const EPIPE)
  (define-const EDOM)
  (define-const ERANGE)

  (define-const EINPROGRESS)
  (define-const EWOULDBLOCK)
  (define-const ECONNABORTED)
  (define-const ECONNREFUSED)
  (define-const ECONNRESET)
  (define-c-lambda strerror (int) char-string))
