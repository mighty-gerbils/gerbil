;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL errors
(export #t check-ptr)
(import :std/error
        :std/os/error
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

(deferror-class (SSLError IOError) () ssl-error?)
(def (raise-ssl-error where result)
  (let (errstr
        (match result
          ((? fixnum? result)
           (ERR_error_string result))
          ([_ _ last]
           (ERR_error_string last))
          (else "unknown error")))
    (raise (SSLError "SSL error" irritants: [errstr result] where: where))))
