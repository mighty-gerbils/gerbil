(export #t)

(import (for-syntax ./func
                    :std/stxutil)
        :std/sugar)

(defrules defsyntax/unhygienic ()
  ((_ (m-id stx) body ...)
   (defsyntax m-id (compose syntax-local-introduce (lambda (stx) body ...) syntax-local-introduce)))
  ((_ m-id f-expr) (identifier? #'m-id)
   (defsyntax m-id (compose syntax-local-introduce f-expr syntax-local-introduce))))

;; Written with the precious help of Alex Knauth
(defsyntax (with-id stx)
  (syntax-case stx ()
    ((wi (id-spec ...) body ...)
     #'(wi wi (id-spec ...) body ...))
    ((wi ctx (id-spec ...) body body1 body+ ...)
     (identifier? #'ctx)
     #'(wi ctx (id-spec ...) (begin body body1 body+ ...)))
    ((_ ctx (id-spec ...) template)
     (identifier? #'ctx)
     (with-syntax ((((id expr) ...)
                    (stx-map (lambda (spec) (syntax-case spec ()
                                         ((id) #'(id 'id))
                                         ((id ct-expr more ...) #'(id (list ct-expr more ...)))
                                         (id (identifier? #'id) #'(id 'id))))
                             #'(id-spec ...))))
       #'(begin
           (defsyntax/unhygienic (m stx2)
             (with-syntax ((id (identifierify (stx-car (stx-cdr stx2)) expr)) ...)
               (... #'(... template))))
           (m ctx))))))

(defrule (with-id/expr stuff ...) (let () (with-id stuff ...)))
