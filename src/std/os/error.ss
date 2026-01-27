;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS errors
(import :std/ffi
        :std/error)
(export #t)

(deferror-class OSError (errno) os-error?)

(defrule (raise-os-error where errno irritants ...)
  (let* ((errno (if (fx< errno 0) (fx- errno) errno))
         (err (OSError (strerror errno) where: (exception-context where) irritants: ['where irritants ...])))
    (set! (OSError-errno err) errno)
    (raise err)))

(defrule (raise-os-errno where irritants ...)
  (let (errno (__errno))
    (raise-os-error where errno irritants ...)))

(def os-error-errno OSError-errno)

(deferror-class AllocationError () foreign-allocation-error?)

(defraise/context (raise-allocation-error where expr)
  (AllocationError "error allocating memory" irritants: [expr]))

(defrule (check-os-error expr (prim arg ...))
  (let (r expr)
    (if (not (##fxnegative? r)) r
        (raise-os-error prim r arg ...))))

(defrule (check-os-errno expr (prim arg ...))
  (let (r expr)
    (if (not (##fxnegative? r)) r
        (raise-os-errno prim arg ...))))

(defrules do-retry-nonblock ()
  ((_ expr (prim arg ...) errno: get-errno ERRNO ...)
   (let lp ()
     (let (r expr)
       (if (not (##fxnegative? r)) r
           (let (errno (get-errno r))
             (cond
              ((or (##fx= errno ERRNO) ...)
               #f)
              ((##fx= errno EINTR)
               (lp))
              (else
               (raise-os-error prim errno arg ...))))))))
  ((_ expr (prim arg ...) ERRNO ...)
   (do-retry-nonblock expr (prim arg ...) errno: ##fx- ERRNO ...
     (let lp ()
       (let (r expr)
         (if (not (##fxnegative? r)) r
             (let (errno (get-errno r))
               (cond
                ((or (##fx= errno ERRNO) ...)
                 #f)
                ((##fx= errno EINTR)
                 (lp))
                (else
                 (raise-os-error prim errno arg ...))))))))))

(defrules check-ptr ()
  ((_ (make arg ...))
   (let (r (make arg ...))
     (if r r (raise-allocation-error make '(make arg ...))))))

(C-include "<errno.h>"
           "<string.h>")

(def-C (__errno)
  => :fixnum
  "__FIX(errno)")

(def-C-lambda strerror (int) char-string)

(def-C-const
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
