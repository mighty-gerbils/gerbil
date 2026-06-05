;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS errors
(import :std/ffi
        :std/error)
(export #t)

(deferror-class OSError (errno) os-error?)

(defrule (raise-os-error where errno irritants ...)
  (abort!
   (let* ((errno errno)
          (errno (if (fx< errno 0) (fx- errno) errno))
          (err (OSError (strerror errno)
                        where: (exception-context where)
                        irritants: [primitive: 'where irritants ...])))
     (set! (OSError-errno err) errno)
     (raise err))))

(deferror-class AllocationError () foreign-allocation-error?)

(defraise/context (raise-allocation-error where expr)
  (AllocationError "error allocating memory" irritants: [expr]))

(defsyntax-case check-os-error ()
  ((_ (prim arg ...) errno: get-errno)
   (with-syntax (((val ...) (gentemps #'(arg ...))))
     #'(let ((val arg) ...)
         (let (r (prim val ...))
           (if (not (fxnegative? r)) r
               (raise-os-error prim (get-errno r) args: [val ...]))))))
  ((_ expr)
   #'(check-os-error expr errno: ##fx-)))

(defsyntax-case do-try-syscall ()
  ((_ (prim arg ...)
      errno: get-errno
      result: result
      error: error?
      eqv: eqv
      ERRNO ...)
   (with-identifier (r '$r)
     (with-syntax (((val ...) (gentemps #'(arg ...))))
       #'(let ((val arg) ...)
           (let loop ()
             (let (r (prim val ...))
               (if (not (error? r)) r
                   (let (errno (get-errno r))
                     (cond
                      ((eqv errno EINTR)
                       (loop))
                      ((or (eqv errno ERRNO) ...)
                       (result r))
                      (else
                       (raise-os-error prim errno args: [val ...])))))))))))
  )

(defrule (do-syscall expr ERRNO ...)
  (: (do-try-syscall expr
       errno: fx-
       result: (lambda (r) r)
       error: fxnegative?
       eqv: fx=
       ERRNO ...)
     :fixnum))

(defrule (do-syscall64 expr ERRNO ...)
  (: (do-try-syscall expr
       errno: -
       result: (lambda (r) r)
       error: negative?
       eqv: =
       ERRNO ...)
     :integer))

(defrule (with-error cleanup body rest ...)
  (try body rest ...
       (catch (e) cleanup (raise e))))

(defrules errno-case (else)
  ((_ r ((errcase ...) expr ...) ... (else rest ...))
   (let (errno (fx- r))
     (cond
      ((or (fx= errno errcase) ...)
       expr ...)
      ...
      (else rest ...)))))

(C-ffi-macrology)
(C-include "<errno.h>"
           "<string.h>")

(def-C (__errno)
  => :fixnum
  "errno")

(def-C-lambda (strerror (errno : int))
  => char-string
  "strerror")

(def-C-const*
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
