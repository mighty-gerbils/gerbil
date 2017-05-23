;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser base types
package: std/parser

(import :std/error)
(export #t)

(defstruct (parse-error <error>) ())

(defstruct token (t e loc) final: #t)
(defstruct location (port line col off xoff) final: #t)

(def (wrap-identity e loc)
  e)

(def (wrap-syntax e loc)
  (if (or (AST? e) (not loc)) e
      (make-AST e (location->source-location loc))))

(def (token->syntax tok)
  (with ((token t e loc) tok)
    (wrap-syntax [t e] loc)))

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
             (for-each (match <>
                         ((token t e loc)
                          (display "... detail: ")
                          (display "(") (display t) (display " ") (display e) (display ")")
                          (when loc
                            (display " at ")
                            (display-location loc))
                          (newline))
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

(def (display-location loc (port (current-output-port)))
  (##display-locat (location->source-location loc)  #t port))

;; location [start end]
(def (location-delta start end)
  (with (((location port line col _ xoff) start)
         ((location _ _ _ eoff exoff) end))
    (make-location port line col (fx+ (fx- exoff xoff) eoff) xoff)))

;; location [start end)
(def (location-delta* start end)
  (with (((location port line col _ xoff) start)
         ((location _ _ _ _ exoff) end))
    (make-location port line col (fx- exoff xoff) xoff)))
