;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser base types

(import :std/error)
(export #t)

(defclass (ParseError Error) ()
  final: #t)
(defmethod {:init! ParseError}
  Error:::init!)

(defstruct token (t e loc) final: #t)
(defstruct location (port line col off xoff) final: #t)

(def (wrap-identity e loc)
  e)

(def (wrap-ast e loc)
  (if (or (AST? e) (not loc)) e
      (make-AST e (location->source-location loc))))

(def (unwrap-ast e)
  (if (AST? e)
    (AST-e e)
    e))

(def (token->syntax tok)
  (match tok
    ((token t e loc)
     (wrap-ast [t e] loc))
    (else tok)))

(def (raise-parse-error where msg tok . rest)
  (raise (ParseError msg irritants: (cons tok rest) where: where)))
(def parse-error? ParseError?)

(defmethod {display-exception ParseError}
  (lambda (self port)
    (let ((msg (Error-message self))
          (where (Error-where self))
          (irritants (Error-irritants self)))
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
           (display "... token: (") (display t) (display " ") (write e) (displayln ")")
           (unless (null? rest)
             (for-each (match <>
                         ((token t e loc)
                          (display "... detail: ")
                          (display "(") (display t) (display " ") (write e) (display ")")
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
    (make-location port line col (##fx+ (##fx- exoff xoff) eoff) xoff)))

;; location [start end)
(def (location-delta* start end)
  (with (((location port line col _ xoff) start)
         ((location _ _ _ _ exoff) end))
    (make-location port line col (##fx- exoff xoff) xoff)))
