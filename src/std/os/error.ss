;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS errors
(import :std/ffi
        :std/error)
(export #t)

(deferror-class OSError (errno) os-error?)

(defrule (raise-os-error where errno irritants ...)
  (let* ((errno (if (fx< errno 0) (fx- errno) errno))
         (err (OSError (strerror errno) where: (exception-context where) irritants: [primitive: 'where irritants ...])))
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

(defsyntax-case do-retry-nonblock ()
  ((_ (prim arg ...) errno: get-errno ERRNO ...)
   (with-identifier (r '$r)
     (with-syntax (((val ...) (gentemps #'(arg ...))))
       #'(let ((val arg) ...)
           (let loop ()
             (let (r (prim val ...))
               (if (not (##fxnegative? r)) r
                   (let (errno (get-errno r))
                     (cond
                      ((or (##fx= errno ERRNO) ...)
                       #f)
                      ((##fx= errno EINTR)
                       (loop))
                      (else
                       (raise-os-error prim errno args: [val ...])))))))))))
  ((_ (prim arg ...) ERRNO ...)
   (do-retry-nonblock (prim arg ...) errno: ##fx- ERRNO ...)))

(defrule (do-sys-retry-nonblock (prim arg ...) ERRNO ...)
  (do-retry-nonblock (prim arg ...) errno: __get_errno ERRNO ...))

(defrules check-ptr ()
  ((_ (make arg ...))
   (let (r (make arg ...))
     (if r r (raise-allocation-error make '(make arg ...))))))

(C-include "<errno.h>"
           "<string.h>")

(def-C (__errno)
  => :fixnum
  "errno")

(def (__get-errno _)
  (__errno))

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
