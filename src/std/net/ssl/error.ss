;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL errors
(export #t)
(import :std/error
        :std/sugar
        :std/crypto/libcrypto
        ./libssl)

(defrule (with-ssl-result (proc arg ...))
  (let (result (proc arg ...))
    (cond
     ((fixnum? result)
      (if (fx> result 0)
        (void)
        (raise-ssl-error 'proc result)))
     ((char? result) result)
     (else
      (raise-ssl-error 'proc result)))))

(defrule (check-ptr expr)
  (cond
   (expr)
   (else
    (error "SSL object allocation failed" 'expr))))

(defstruct (ssl-error <error>) ())

(def (raise-ssl-error where result)
  (let (errstr
        (match result
          ((? fixnum? result)
           (string-append (or (ERR_lib_error_string result) "?")
                          ":" (or (ERR_reason_error_string result) "?")))
          ([_ . err]
           (string-append (or (ERR_lib_error_string err) "?")
                          ":" (or (ERR_reason_error_string err) "?")))
          (else "unknown error")))
    (raise (make-ssl-error "SSL error" [errstr result] where))))
