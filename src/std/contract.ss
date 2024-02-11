;;; -*- Gerbil -*-
;;; © vyzo
;;; contracts and type assertions
(export using
        with-interface with-class with-contract
        maybe list-of? in-range? in-range-inclusive? nonnegative-fixnum?)
(import (for-syntax :gerbil/expander)
        ./error
        ./interface
        ./sugar)

(defsyntax (using stx)
  (syntax-case stx (:~)
    ((_ (id expr ~ contract) body ...)
     (and (identifier? #'id)
          (identifier? #'~)
          (or (free-identifier=? #'~ #':)
              (free-identifier=? #'~ #':-)
              (free-identifier=? #'~ #':~)))
     #'(let (id expr)
         (using (id ~ contract)
           body ...)))
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
        ((class-type-info? meta)
         #'(with-class (id ~ Type) body ...))
        (else
         (raise-syntax-error #f "bad type; must be an interface, struct, or class with complete type information" stx #'Type meta)))))
    ((_ (id :~ pred) body ...)
     (identifier? #'id)
     #'(with-contract (id :~ pred) body ...))
    ((_ ((id ~ contract) . rest) body ...)
     (and (identifier? #'id)
          (identifier? #'~)
          (or (free-identifier=? #'~ #':)
              (free-identifier=? #'~ #':-)
              (free-identifier=? #'~ #':~)))
     #'(using (id ~ contract) (using rest body ...)))
    ((_ ((id expr ~ contract) . rest) body ...)
     (and (identifier? #'id)
          (identifier? #'~)
          (or (free-identifier=? #'~ #':)
              (free-identifier=? #'~ #':-)
              (free-identifier=? #'~ #':~)))
     #'(using (id expr ~ contract) (using rest body ...)))
    ((_ () body ...)
     #'(let () body ...))))

(defrules with-contract (:~)
  ((_ (id :~ predicate-expr) body ...)
   (identifier? #'id)
   (let ()
     (begin-annotation @contract
       (unless (predicate-expr id)
         (raise-contract-violation id predicate-expr id)))
     body ...)))

(begin-syntax
  (def (get-slot-accessor stx klass slot)
    (let (accessors (class-type-unchecked-accessors klass))
      (cond
       ((assgetq slot accessors))
       (else
        (raise-syntax-error #f "no accessor for slot" stx klass slot)))))

  (def (get-slot-mutator stx klass slot)
    (let (mutators (class-type-unchecked-mutators klass))
      (cond
       ((assgetq slot mutators))
       (else
        (raise-syntax-error #f "no mutator for slot" stx klass slot)))))

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

(defsyntax (with-class stx)
  (def (expand-body klass var Type body)
    (with-syntax ((@ref (syntax-local-introduce '%%ref))
                  (@set! (stx-identifier var 'set!))
                  (Type::t (class-type-descriptor klass))
                  (var-quoted (core-quote-syntax var))
                  (var var)
                  (klass klass)
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
                                             (getf (get-slot-accessor stx 'klass slot)))
                                 (if (identifier? #'getf)
                                   (syntax/loc stx
                                     (getf object))
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
                                       (slot (string->symbol (cadr split))))
                                  (with-syntax ((object (stx-identifier #'id object))
                                                (setf (get-slot-mutator stx 'klass slot)))
                                    (if (identifier? #'setf)
                                      (syntax/loc stx
                                        (setf object val))
                                      (with-syntax ((slot slot))
                                        (syntax/loc stx
                                          (unchecked-slot-set! object 'slot val)))))))
                               ((_ place val)
                                (syntax/loc stx
                                  (__set! place val)))))))
            (begin-annotation (@type var-quoted class: Type::t)
              (let ()
                body ...))))))

  (def (expand var Type body checked?)
    (let* ((klass (syntax-local-value Type false))
           (expr-body (expand-body klass var Type body)))
      (if checked?
        (with-syntax ((instance? (class-type-predicate klass))
                      (var var) (expr-body expr-body))
          #'(with-contract (var :~ instance?)
              expr-body))
        expr-body)))

  (syntax-case stx (: :-)
    ((_ (var : Type) body ...)
     (and (identifier? #'var)
          (syntax-local-class-type-info? #'Type))
     (expand #'var #'Type #'(body ...) #t))
    ((_ (var :- Type) body ...)
     (and (identifier? #'var)
          (syntax-local-class-type-info? #'Type))
     (expand #'var #'Type #'(body ...) #f))))

(defsyntax (with-interface stx)
  (def (interface-id? id)
    (and (identifier? id)
         (interface-info? (syntax-local-value id false))))

  (def (expand-body var Interface body checked?)
    (with-syntax ((@app (syntax-local-introduce '%%app))
                  (Type::t (interface-info-descriptor (syntax-local-value Interface)))
                  (var-quoted (core-quote-syntax var))
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
            (begin-annotation (@type var-quoted interface: Interface)
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

(defrule (maybe pred)
  (lambda (o)
    (or (not o)
        (pred o))))

(defrule (in-range? start end)
  (lambda (o)
    (and (fixnum? o)
         (fx>= o start)
         (fx< o end))))

(defrule (in-range-inclusive? start end)
  (lambda (o)
    (and (fixnum? o)
         (fx<= start o end))))

(defrule (list-of? pred)
  (lambda (o)
    (and (list? o)
         (andmap pred o))))

(defrule (nonnegative-fixnum? o)
  (lambda (o)
    (and (fixnum? o)
         (fx>= o 0))))
