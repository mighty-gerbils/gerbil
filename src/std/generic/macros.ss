;;; -*- Gerbil -*-
;;; © vyzo
;;; Generics: macros

(import :std/generic/dispatch
        (for-syntax :std/stxutil)
        (rename-in (only-in :gerbil/core defmethod) (defmethod defmethod~)))
(export #t (phi: +1 #t))

(begin-syntax
  (defclass (generic-info macro-object) (table procedure))
  (def (generic-type-id? id)
    (alet (info (syntax-local-value id false))
      (or (class-type-info? info)
          (interface-info? info)))))

(defsyntax (defgeneric stx)
  (def (generate-generic id default)
    (with-syntax* ((id id)
                   (default default)
                   (dispatch-table-id (format-id #'id "~a::t" #'id))
                   (dispatch-table
                    #'(def dispatch-table-id
                        (make-generic 'id default)))
                   (procedure-id (format-id #'id "~a::apply" #'id))
                   (procedure
                    (syntax/loc stx
                      (def* procedure-id
                        ((arg1) (generic-dispatch1 dispatch-table-id arg1))
                        ((arg1 arg2) (generic-dispatch2 dispatch-table-id arg1 arg2))
                        ((arg1 arg2 arg3) (generic-dispatch3 dispatch-table-id arg1 arg2 arg3))
                        ((arg1 arg2 arg3 arg4) (generic-dispatch4 dispatch-table-id arg1 arg2 arg3 arg4))
                        (args (apply generic-dispatch dispatch-table-id args)))))
                   (meta
                    #'(defsyntax id
                        (make-generic-info
                         table: (quote-syntax dispatch-table-id)
                         procedure: (quote-syntax procedure-id)
                         macro:
                         (syntax-rules ()
                           ((_ arg (... ...))
                            (procedure-id arg (... ...)))
                           (id (identifier? #'id) procedure-id))))))
      #'(begin dispatch-table procedure meta)))

  (syntax-case stx ()
    ((_ id)
     (identifier? #'id)
     (generate-generic #'id #f))
    ((_ id default)
     (identifier? #'id)
     (generate-generic #'id #'default))))

(defsyntax (defmethod stx)
  (def (class-method-option? x)
    (memq (stx-e x) '(rebind:)))

  (def (generic-type-e type-info)
    (cond
     ((class-type-info? type-info)
      (!class-type-descriptor type-info))
     ((interface-info? type-info)
      (interface-info-instance-type type-info))
     (else
      (raise-syntax-error #f "Bad syntax; unknown argument type" stx type-info))))

  (def (generic-impl-id generic-id type-ids)
    (datum->syntax generic-id
      (string->symbol
       (string-join
        (map (lambda (id) (symbol->string (stx-e id)))
             (cons generic-id type-ids))
        "::"))))

  (syntax-case stx (@method)
    ((_ (@method id type) impl . opts)
     (with-syntax ((body (stx-cdr stx)))
       (syntax/loc stx
         (defmethod~ . body))))

    ((_ (generic-id (arg-id type-id) ...) body ...)
     (cond
      ((and (identifier? #'generic-id)
            (generic-info? (syntax-local-value #'generic-id false))
            (identifier-list? #'(arg-id ...))
            (stx-andmap generic-type-id? #'(type-id ...)))
       (with-syntax* ((impl-id
                       (generic-impl-id #'generic-id #'(type-id ...)))
                      (@next-method
                       (stx-identifier #'generic-id '@next-method))
                      (generic::t
                       (@ (syntax-local-value #'generic-id)
                          table))
                      ((values type-infos)
                       (stx-map syntax-local-value #'(type-id ...)))
                      ((arg-type ...)
                       (map generic-type-e type-infos))
                      (impl
                       (syntax/loc stx
                         (lambda (arg-id ...) (using ((arg-id :- type-id) ...) body ...))))
                      (defimpl
                        (syntax/loc stx
                          (def impl-id
                            (let-syntax
                                ((@next-method
                                  (syntax-rules ()
                                    ((_ arg-id ...)
                                     (generic-dispatch-next generic::t impl-id arg-id ...)))))
                              impl)))))
         (syntax/loc stx
           (begin
             defimpl
             (generic-bind! generic::t [arg-type ...] impl-id)))))
      ((not (identifier? #'generic-id))
       (raise-syntax-error #f "Bad syntax; expected method identifier"
                           stx #'generic-id))
      ((not (generic-info? (syntax-local-value #'generic-id false)))
       (raise-syntax-error #f "Bad syntax; expected generic method identifier"
                           stx #'generic-id))
      ((not (identifier-list? #'(arg-id ...)))
       (let (bad-id (find (? (not identifier?)) #'(arg-id ...)))
         (raise-syntax-error #f "Bad syntax; expected identifier"
                             stx bad-id)))
      (else
       (let (bad-id (find (? (not generic-type-id?)) #'(type-id ...)))
         (raise-syntax-error #f "Bad syntax; expected class or interface type identifier"
                             stx bad-id)))))))
