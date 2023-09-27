;;; -*- Gerbil -*-
;;; © vyzo
;;; contracts and type assertions
(export using with-interface with-struct with-class with-contract)
(import (for-syntax :gerbil/expander)
        ./error
        ./interface)

(defsyntax (using stx)
  (syntax-case stx (:~)
    ((_ (id ~ Type) body ...)
     (and (identifier? #'id)
          (identifier? #'Type)
          (identifier? #'~)
          (or (free-identifier=? #'~ #':)
              (free-identifier=? #'~ #':-)))
     (let (meta (syntax-local-value #'Type false))
       (cond
        ((not meta)
         (raise-syntax-error #f "unknown type" stx  #'Type))
        ((interface-info? meta)
         #'(with-interface (id ~ Type) body ...))
        ((extended-struct-info? meta)
         #'(with-struct (id ~ Type) body ...))
        ((extended-class-info? meta)
         #'(with-class (id ~ Type) body ...))
        (else
         (raise-syntax-error #f "bad type; must be an interface, struct, or class with complete type information" stx #'Type meta)))))
    ((_ (id :~ pred) body ...)
     (identifier? #'id)
     #'(with-contract (id :~ pred) body ...))
    ((macro ((id ~ contract) . rest) body ...)
     (and (identifier? #'id)
          (identifier? #'~)
          (or (free-identifier=? #'~ #':)
              (free-identifier=? #'~ #':-)
              (free-identifier=? #'~ #':~)))
     #'(macro (id ~ contract) (macro rest body ...)))
    ((_ () body ...)
     #'(let () body ...))))

(defrules with-contract (:~)
  ((_ (id :~ predicate-expr) body ...)
   (identifier? #'id)
   (let ()
     (begin-annotation @contract
       (unless (predicate-expr id)
         (raise-contract-violation id predicate-expr)))
     body ...)))

(begin-syntax
  (def (meta-type-id rtd-id)
    (let* (id-str (symbol->string (stx-e rtd-id)))
      (stx-identifier rtd-id (substring id-str 0 (- (string-length id-str) 3)))))

  (def (get-struct-accessor stx field meta (E #f))
    (let lp ((meta meta))
      (let get-e ((fields (runtime-struct-fields (runtime-type-exhibitor meta)))
                  (accessors (list-ref (expander-type-identifiers meta) 4)))
        (match fields
          ([x . rest]
           (if (eq? x field)
             (let (getf (car accessors))
               (stx-identifier getf "&" getf))
             (get-e rest (cdr accessors))))
          (else
           (cond
            ((car (expander-type-identifiers meta))
             => (lambda (super)
                  (cond
                   ((syntax-local-value (meta-type-id super) false)
                    => (lambda (meta)
                         (if (extended-struct-info? meta)
                           (lp meta)
                           (raise-syntax-error #f "incomplete type info" stx super))))
                   (else
                    (raise-syntax-error #f "unknown type" stx super)))))
            (else
             (if E (E)
                 (raise-syntax-error #f "uknown struct field" stx field)))))))))


  (def (get-struct-mutator stx field meta (E #f))
    (let lp ((meta meta))
      (let get-e ((fields (runtime-struct-fields (runtime-type-exhibitor meta)))
                  (mutators (list-ref (expander-type-identifiers meta) 5)))
        (match fields
          ([x . rest]
           (if (eq? x field)
             (let (getf (car mutators))
               (stx-identifier getf "&" getf))
             (get-e rest (cdr mutators))))
          (else
           (cond
            ((car (expander-type-identifiers meta))
             => (lambda (super)
                  (cond
                   ((syntax-local-value (meta-type-id super) false)
                    => (lambda (meta)
                         (if (extended-struct-info? meta)
                           (lp meta)
                           (raise-syntax-error #f "incomplete type info" stx super))))
                   (else
                    (raise-syntax-error #f "incomplete type info" stx super)))))
            (else
             (if E (E)
                 (raise-syntax-error #f "uknown struct field" stx field)))))))))

  (def (get-class-accessor stx field-or-slot meta (E #f))
    (let get-e ((slots (runtime-class-slots (runtime-type-exhibitor meta))))
        (match slots
          ([x . rest]
           (if (eq? x field-or-slot)
             #t
             (get-e rest)))
          (else
           (cond
            ((car (expander-type-identifiers meta))
             => (lambda (super)
                  ;; TODO: C3 linearization
                  (let lp ((rest super))
                    (match rest
                      ([super . rest]
                       (cond
                        ((syntax-local-value (meta-type-id super) false)
                         => (lambda (meta)
                              (cond
                               ((extended-struct-info? meta)
                                (get-struct-accessor stx field-or-slot meta (cut lp rest)))
                               ((extended-class-info? meta)
                                (get-class-accessor stx field-or-slot meta (cut lp rest)))
                               (else
                                (raise-syntax-error #f "incomplete type info" stx super)))))
                        (else
                         (raise-syntax-error #f "incomplete type info" stx super))))))))
            (else
             (if E (E)
                 (raise-syntax-error #f "uknown class slot or field" stx field-or-slot))))))))

  (def (get-class-mutator stx field-or-slot meta (E #f))
    (let get-e ((slots (runtime-class-slots (runtime-type-exhibitor meta))))
      (match slots
          ([x . rest]
           (if (eq? x field-or-slot)
             #t
             (get-e rest)))
          (else
           (cond
            ((car (expander-type-identifiers meta))
             => (lambda (super)
                  ;; TODO: C3 linearization
                  (let lp ((rest super))
                    (match rest
                      ([super . rest]
                       (cond
                        ((syntax-local-value (meta-type-id super) false)
                         => (lambda (meta)
                              (cond
                               ((extended-struct-info? meta)
                                (get-struct-accessor stx field-or-slot meta (cut lp rest)))
                               ((extended-class-info? meta)
                                (get-class-accessor stx field-or-slot meta (cut lp rest)))
                               (else
                                (raise-syntax-error #f "incomplete type info" stx super)))))
                        (else
                         (raise-syntax-error #f "incomplete type info" stx super))))))))
            (else
             (if E (E)
                 (raise-syntax-error #f "uknown class slot or field" stx field-or-slot))))))))

  (def (dotted-identifier? id var)
    (and (identifier? id)
         (let (id-str (symbol->string (stx-e id)))
           (and (string-index id-str #\.)
                (let* ((split (string-split id-str #\.))
                       (object (string->symbol (car split)))
                       (var-local
                        (syntax-local-introduce var))
                       (object-local
                        (stx-identifier id object)))
                  (and (fx= (length split) 2)
                       (bound-identifier=? object-local var-local))))))))

(defsyntax (with-struct stx)
  (def (struct-id? Type)
    (extended-struct-info? (syntax-local-value Type false)))

  (def (expand-body meta var Type body)
    (with-syntax ((@ref (syntax-local-introduce '%%ref))
                  (@set! (stx-identifier var 'set!)) ; need to get the right set! context
                  (var var)
                  (meta meta)
                  ((body ...) body))
      #'(let-syntax ((__ref
                      (syntax-rules ()
                        ((_ id) (@ref id))))
                     (__set!
                      (syntax-rules ()
                        ((_ place value)
                         (@set! place value)))))
          (let-syntax ((@ref
                        (lambda (stx)
                          (syntax-case stx ()
                            ((_ id)
                             (dotted-identifier? #'id #'var)
                             (let* ((split (string-split (symbol->string (stx-e #'id)) #\.))
                                    (object (string->symbol (car split)))
                                    (field (string->symbol (cadr split))))
                               (with-syntax ((object (stx-identifier #'id object))
                                             (getf (get-struct-accessor stx field 'meta)))
                                 (syntax/loc stx
                                   (getf object)))))
                            ((_ id)
                             (syntax/loc stx
                               (__ref id))))))
                       (@set!
                           (lambda (stx)
                             (syntax-case stx ()
                               ((_ id val)
                                (dotted-identifier? #'id #'var)
                                (let* ((split (string-split (symbol->string (stx-e #'id)) #\.))
                                       (object (string->symbol (car split)))
                                       (field (string->symbol (cadr split))))
                                  (with-syntax ((object (stx-identifier #'id object))
                                                (setf (get-struct-mutator stx field 'meta)))
                                    (syntax/loc stx
                                      (setf object val)))))
                               ((_ place val)
                                (syntax/loc stx
                                  (__set! place val)))))))
            (begin-annotation (@type (var struct: Type))
              (let ()
                body ...))))))

  (def (expand var Type body checked?)
    (let* ((meta (syntax-local-value Type #f))
           (expr-body (expand-body meta var Type body)))
      (if checked?
        (with-syntax ((instance? (list-ref (expander-type-identifiers meta) 3))
                      (var var) (expr-body expr-body))
          #'(with-contract (var :~ instance?)
              expr-body))
        expr-body)))

  (syntax-case stx (: :-)
    ((_ (var : Type) body ...)
     (and (identifier? #'var)
          (struct-id? #'Type))
     (expand #'var #'Type #'(body ...) #t))
    ((_ (var :- Type) body ...)
     (and (identifier? #'var)
          (struct-id? #'Type))
     (expand #'var #'Type #'(body ...) #f))))


(defsyntax (with-class stx)
  (def (class-id? Type)
    (extended-class-info? (syntax-local-value Type false)))

  (def (expand-body meta var Type body)
    (with-syntax ((@ref (syntax-local-introduce '%%ref))
                  (@set! (stx-identifier var 'set!))
                  (var var)
                  (meta meta)
                  ((body ...) body))
      #'(let-syntax ((__ref
                      (syntax-rules ()
                        ((_ id) (@ref id))))
                     (__set!
                      (syntax-rules ()
                        ((_ place value)
                         (@set! place value)))))
          (let-syntax ((@ref
                        (lambda (stx)
                          (syntax-case stx ()
                            ((_ id)
                             (dotted-identifier? #'id #'var)
                             (let* ((split (string-split (symbol->string (stx-e #'id)) #\.))
                                    (object (string->symbol (car split)))
                                    (slot (string->symbol (cadr split))))
                               (with-syntax ((object (stx-identifier #'id object))
                                             (getf (get-class-accessor stx slot meta)))
                                 (if (identifier? getf)
                                   (with-syntax ((getf getf))
                                     (syntax/loc stx
                                       (getf object)))
                                   (with-syntax ((slot slot))
                                     (syntax/loc stx
                                       (unchecked-slot-ref object 'slot)))))))
                            ((_ id)
                             (syntax/loc stx
                               (__ref id))))))
                       (@set!
                           (lambda (stx)
                             (syntax-case stx ()
                               ((_ id val)
                                (dotted-identifier? #'id #'var)
                                (let* ((split (string-split (symbol->string (stx-e #'id)) #\.))
                                       (object (string->symbol (car split)))
                                       (field (string->symbol (cadr split))))
                                  (with-syntax ((object (stx-identifier #'id object))
                                                (setf (get-class-mutator stx slot meta)))
                                    (if (identifier? setf)
                                      (with-syntax ((setf setf))
                                        (syntax/loc stx
                                          (setf object val)))
                                      (with-syntax ((slot slot))
                                        (syntax/loc stx
                                          (unchecked-slot-set! object 'slot val)))))))
                               ((_ place val)
                                (syntax/loc stx
                                  (__set! place val)))))))
            (begin-annotation (@type (var class: Type))
              (let ()
                body ...))))))

  (def (expand var Type body checked?)
    (let* ((meta (syntax-local-value Type #f))
           (expr-body (expand-body meta var Type body)))
      (if checked?
        (with-syntax ((instance? (list-ref (expander-type-identifiers meta) 3))
                      (var var) (expr-body expr-body))
          #'(with-contract (var :~ instance?)
              expr-body))
        expr-body)))

  (syntax-case stx (: :-)
    ((_ (var : Type) body ...)
     (and (identifier? #'var)
          (class-id? #'Type))
     (expand #'var #'Type #'(body ...) #t))
    ((_ (var :- Type) body ...)
     (and (identifier? #'var)
          (class-id? #'Type))
     (expand #'var #'Type #'(body ...) #f))))

(defsyntax (with-interface stx)
  (def (interface-id? id)
    (and (identifier? id)
         (interface-info? (syntax-local-value id false))))

  (def (expand-body var Interface body checked?)
    (with-syntax ((@app (syntax-local-introduce '%%app))
                  (var var)
                  (Interface Interface)
                  (checked? checked?)
                  ((body ...) body))
      #'(let-syntax ((__app
                      (syntax-rules ()
                        ((_ rator rand (... ...))
                         (@app rator rand (... ...))))))
          (let-syntax ((@app
                        (lambda (stx)
                          (syntax-case stx ()
                            ((_ rator . args)
                             (dotted-identifier? #'rator #'var)
                             (let* ((split (string-split (symbol->string (stx-e #'rator)) #\.))
                                    (object (string->symbol (car split)))
                                    (method (string->symbol (cadr split))))
                               (with-syntax ((object (stx-identifier #'rator object))
                                             (method (stx-identifier #'rator (if checked? "" "&") 'Interface "-" method)))
                                 (syntax/loc stx
                                   (method object . args)))))
                            ((_ . args)
                             (syntax/loc stx
                               (__app . args)))))))
            (begin-annotation (@type (var interface: Interface))
              (let ()
                body ...))))))

  (def (expand var Interface body checked?)
    (let (expr-body (expand-body var Interface body checked?))
      (if checked?
        (with-syntax ((var var) (Interface Interface) (expr-body expr-body))
          #'(let (var (Interface var))
              expr-body))
        expr-body)))

  (syntax-case stx (: :-)
    ((_ (var : Interface) body ...)
     (and (identifier? #'var)
          (interface-id? #'Interface))
     (expand #'var #'Interface #'(body ...) #t))
    ((_ (var :- Interface) body ...)
     (and (identifier? #'var)
          (interface-id? #'Interface))
     (expand #'var #'Interface #'(body ...) #f))))
