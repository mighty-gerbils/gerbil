;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser base types
package: std/parser

(import :std/error)
(export #t)

(defstruct (parse-error <error>) ())

(defstruct token (t e loc))
(defstruct location (port line col off xoff))

(def (wrap-syntax e loc)
  (make-AST e (location->source-location loc)))

(def (wrap-identity e loc)
  e)

(def (raise-parse-error where msg tok . rest)
  (raise (make-parse-error msg (cons tok rest) where)))

(defmethod {display-exception parse-error}
  (lambda (self port)
    (with ((parse-error msg irritants where) self)
      (match irritants
        ([(token t e loc) . rest]
         (parameterize ((current-output-port port))
           (displayln "Parse Error")
           (display "*** ERROR IN ")
           (if loc
             (display-location loc port)
             (display "?"))
           (newline)
           (display "--- Parse error")
           (when where
             (display " at ")
             (display where))
           (displayln ": " msg)
           (displayln "... token: (" t " " e ")")
           (unless (null? rest)
             (display "... detail: ")
             (for-each (match <>
                         ((token t e _)
                          (displayln "(" t " " e ")"))
                         (obj (write obj) (newline)))
                       rest))))
        (else
         (if where
           (displayln "Parse error at " where ": " msg)
           (displayln "Parse error: " msg))
         (unless (null? irritants)
           (display "--- irritants: ")
           (for-each (lambda (obj) (write obj) (display " "))
                     irritants)))))))

(def (location->source-location loc)
  (with ((location port line col off) loc)
    (let* ((container
            (##port-name->container
             (##port-name port)))
           (filepos
            (##make-filepos line col off)))
      (##make-locat container filepos))))

(def (display-location loc port)
  (##display-locat (location->source-location loc)  #t port))

