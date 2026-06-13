;;; -*- Gerbil -*-
;;; © vyzo
;;; libcrypto errors
(import :std/error
        ./libcrypto)
(export #t)

(deferror-class LibCryptoError () libcrypto-error?
  (lambda (self ctx errno . irritants)
    (Error:::init! self
                   (or (ERR_reason_error_string errno) "libcrypto: Unknown error")
                   where: ctx
                   irritants:
                   [(string-append
                     (or (ERR_lib_error_string errno) "?") ":"
                     (or (ERR_func_error_string errno) "?"))
                    errno irritants ...])))

(defrule (raise-libcrypto-error where irritants ...)
  (abort!
   (raise
    (LibCryptoError (exception-context where)
                    (ERR_get_error)
                    irritants ...))))

(defsyntax-case with-libcrypto-error ()
  ((_ where (prim arg ...) success?)
   (with-syntax ((($arg ...) (gentemps #'(arg ...))))
     #'(let (($arg arg) ...)
         (declare (not interrupts-enabled)
                  (mostly-fixnum))
         (##check-heap-limit)
         (let (result (prim $arg ...))
           (if (success? result)
             result
             (raise-libcrypto-error where 'prim $arg ...))))))
  ((_ where primop)
   #'(with-libcrypto-error where primop positive?)))
