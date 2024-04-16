;;; -*- Gerbil -*-
;;; © vyzo
;;; syntax parameters

(export #t (for-syntax #t))

(begin-syntax
  (defclass syntax-parameter (key default))

  (def (syntax-parameter-value id-stx)
    (let (param (syntax-local-value id-stx))
      (if (syntax-parameter? param)
        (using (param :- syntax-parameter)
          (let (key-stx (syntax-local-rewrap param.key))
            (or (syntax-local-value key-stx false)
                param.default)))
        (abort!
         (raise-syntax-error #f "Bad syntax; not defined as a syntax parameter" id-stx)))))

  (def (syntax-parameter-e (param : syntax-parameter))
    (let (key-stx (syntax-local-rewrap param.key))
      (or (syntax-local-e key-stx false)
          param.default)))

  (defmethod {apply-macro-expander syntax-parameter}
    (lambda (self stx)
      (let (e (syntax-parameter-e self))
        (core-apply-expander e stx)))))

(defrules defsyntax-parameter ()
  ((_ id default)
   (defsyntax id
     (make-syntax-parameter key: (gensym 'id) default: default))))

;; TODO: generalize to accept functions as parameters.
(defsyntax (defsyntax-parameter* stx)
  (def (defparam macro param errmsg)
    (with-syntax ((macro macro)
                  (param param)
                  (errmsg errmsg))
      #'(begin
          (defsyntax-parameter param #f)
          (defsyntax (macro stx)
            (if (identifier? stx)
              (cond
               ((syntax-parameter-value (quote-syntax param)))
               (else
                (raise-syntax-error #f errmsg stx)))
              (raise-syntax-error #f "Bad syntax; defsyntax-parameter* expects a macro definition" stx))))))

  (syntax-case stx ()
    ((_ macro param)
     (identifier-list? #'(macro param))
     (defparam #'macro #'param "Bad syntax; syntax parameter* unbound"))
    ((_ macro param errmsg)
     (identifier-list? #'(macro param))
     (defparam #'macro #'param #'errmsg))))

(defsyntax (syntax-parameterize stx)
  (def (parameter-key param-id)
    (let (param (syntax-local-value param-id))
      (unless (syntax-parameter? param)
        (raise-syntax-error #f "Bad syntax; not defined as a syntax parameter" stx param-id))
      (syntax-local-rewrap
       (syntax-parameter-key param))))

  (syntax-case stx ()
    ((_ ((param expr) ...) body rest ...)
     (with-syntax (((key ...) (map parameter-key #'(param ...))))
       #'(let-syntax ((key expr) ...)
           body rest ...)))))
