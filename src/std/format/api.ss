;;; -*- Gerbil -*-
;;; © vyzo
;;; high level format api
(import XXX
        ./format
        (for-syntax ./format-string))
(export XXX)

(begin-syntax
  (def (parse-format-string-at stx str)
    (try
     (parse-format-string str)
     (catch (e)
       (raise-syntax-error #f "error parsing format string" stx (error-message e))))))

(defsyntax-case format ()
  ((_ fmt-string arg ...)
   (stx-string? #'fmt-string)
   XXX
   )
  ((_ fmt-string-expr arg ...)
   #'(apply-formater
      (make-formater-from-format-string fmt-string-expr)
      arg ...)))

(defsyntax-case fprintf ()
  ((_ output fmt-string arg ...)
   (stx-string? #'fmt-string)
   XXX
   )
  ((_ output fmt-string-expr arg ...)
   #'(apply-formmater-to-output
      (make-formater-from-format-string fmt-string)
      output arg ...)))

(defrule (printf fmt-string arg ...)
  (fpritnf (current-output-port) fmt-string arg ...))

(defrule (eprintf fmt-string arg ...)
  (fpritnf (current-error-port) fmt-string arg ...))
