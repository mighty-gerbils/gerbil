;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Gerbil error objects
package: std

(import :std/format)
(export #t)

(defsyntax <exception>
  (make-runtime-struct-info
   runtime-identifier: (quote-syntax exception::t)))

(defsyntax <error>
  (make-runtime-struct-info
   runtime-identifier: (quote-syntax error::t)))

(defmethod {display-exception <error>}
  (lambda (self port)
    (cond
     ((error-trace self)
      => (lambda (where) (fprintf port "~a: " where))))
    (fprintf port "[~a] " (##type-name (object-type self)))
    (fprintf port "~a~n" (error-message self))
    (let (irritants (error-irritants self))
      (unless (null? irritants)
        (display "--- irritants: " port)
        (for-each
          (lambda (obj) (fprintf port "~a " obj))
          irritants)
        (newline port)))))

(defstruct (io-error <error>) ())
(defstruct (timeout-error <error>) ())

(def (raise-io-error where what . irritants)
  (raise (make-io-error what irritants where)))

(def (raise-timeout where what . irritants)
  (raise (make-timeout-error what irritants where)))
