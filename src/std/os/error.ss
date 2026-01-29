;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS errors
(import :std/ffi
        :std/error)
(export #t)

(deferror-class OSError ((errno : :int)) os-error?)

(defrule (raise-os-error where errno irritants ...)
  (let* ((errno errno)
         (errno (if (int.< errno 0) (int.- errno) errno))
         (err (OSError (strerror errno) where: (exception-context where) irritants: [primitive: 'where irritants ...])))
    (set! (OSError-errno err) errno)
    (raise err)))

(defrule (raise-os-errno where errno irritants ...)
  (raise-os-error where errno irritants ...))

(def os-error-errno OSError-errno)

(deferror-class AllocationError () foreign-allocation-error?)

(defraise/context (raise-allocation-error where expr)
  (AllocationError "error allocating memory" irritants: [expr]))

(defsyntax-case check-os-error ()
  ((_ (prim arg ...) errno: get-errno)
   (with-syntax (((val ...) (gentemps #'(arg ...))))
     #'(let ((val arg) ...)
         (let (r (prim val ...))
           (if (not (##fxnegative? r)) r
               (raise-os-error prim (get-errno r) args: [val ...]))))))
  ((_ expr)
   (check-os-error expr errno: ##fx-)))

(defsyntax-case do-try-syscall ()
  ((_ (prim arg ...) errno: get-errno result: result ERRNO ...)
   (with-identifier (r '$r)
     (with-syntax (((val ...) (gentemps #'(arg ...))))
       #'(let ((val arg) ...)
           (let loop ()
             (let (r (prim val ...))
               (if (not (int.negative? r)) r
                   (let (errno (get-errno r))
                     (cond
                      ((or (int.= errno ERRNO) ...)
                       (result r))
                      ((int.= errno EINTR)
                       (loop))
                      (else
                       (raise-os-error prim errno args: [val ...])))))))))))
  ((_ expr ERRNO ...)
   (do-try-syscall expr
     errno: int.-
     result: (lambda (r) #f)
     ERRNO ...)))

(defrule (do-syscall expr ERRNO ...)
  (: (do-try-syscall expr
       errno: int.-
       result: (lambda ((r :- :int)) => :int r)
       ERRNO ...)
     :int))

(defrule (with-error cleanup body rest ...)
  (try body rest ...
       (catch (e) cleanup (raise e))))

(C-include "<errno.h>"
           "<string.h>")

(def-C (__errno)
  => :int
  "errno")

(def (__get-errno _) => :int
  (__errno))

(def-C (strerror (errno int :- :fixnum))
  => :c-string)

#;(def-C-lambda (strerror (errno int :- :fixnum))
  => char-string :string)

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
