;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil core prelude: contract and interface macros
;;;
prelude: :<root>
package: gerbil/core

(import "runtime"
        "sugar"
        "mop"
        "match"
        "more-sugar"
        "module-sugar"
        (phi: +1
              "runtime"
              "sugar"
              "mop"
              "match"
              "more-sugar"
              "expander"
              "macro-object"
              "more-syntax-sugar")
        (phi: +2
              "runtime"
              "expander"))
(export  #t ; export the submodules themselves
         (import: TypeReference TypeCast Using ContractRules Interface TypedDefinitions)
         (phi: +1 (import: InterfaceInfo TypeEnv ClassMeta)))

(module InterfaceInfo
  (import "expander")
  (export #t)
  (defclass interface-info (name
                            interface-mixin
                            interface-methods
                            instance-type interface-descriptor
                            instance-constructor instance-try-constructor
                            instance-predicate instance-satisfies-predicate
                            implementation-methods
                            unchecked-implementation-methods))

  (defmethod {apply-macro-expander interface-info}
    (with-syntax ((cast (quote-syntax cast))
                  (immediate-instance-of? (quote-syntax immediate-instance-of?)))
      (lambda (self stx)
        (syntax-case stx ()
          ((_ obj)
           (with-syntax ((klass (interface-info-instance-type self))
                         (descriptor (interface-info-interface-descriptor self))
                         (instance-type (interface-info-instance-type self)))
             #'(let ($obj obj)
                 (begin-annotation (@type instance-type)
                   (if (immediate-instance-of? klass $obj)
                     $obj
                     (cast descriptor $obj))))))
          (_ (identifier? stx)
             (with-syntax ((descriptor (interface-info-interface-descriptor self)))
               #'descriptor))))))

  (def (interface-info-flatten-mixin info)
    (let loop ((rest (interface-info-interface-mixin info)) (result []))
      (match rest
        ([id . rest]
         (let (mixin (interface-info-interface-mixin (syntax-local-value id)))
           (let (result
                 (if (member id result free-identifier=?)
                   result
                   (cons id result)))
             (loop (foldl cons rest mixin) result))))
        (else result))))

  (def (syntax-local-interface-info? stx (is? true))
    (and (identifier? stx)
         (alet (e (syntax-local-value stx false))
           (and (interface-info? e)
                (is? e))))))

(module TypeReference
  (import (phi: +1 InterfaceInfo))
  (export #t (phi: +1 #t))

  (begin-syntax
    (defclass type-reference (identifier))

    (def (type-identifier? id)
      (and (identifier? id)
           (alet (t (syntax-local-value id false))
             (or (class-type-info? t)
                 (interface-info? t)
                 (type-reference? t)))))

    (def (resolve-type stx id)
      (let loop ((t (syntax-local-value id false)))
        (cond
         ((class-type-info? t) t)
         ((interface-info? t) t)
         ((type-reference? t)
          (loop (syntax-local-value (type-reference-identifier t) false)))
         ((not t)
          (raise-syntax-error #f "unresolved type" stx id))
         (else
          (raise-syntax-error #f "unexpected type; expected class, interface or type reference" stx id t)))))

    (def (resolve-type->identifier stx id)
      (let loop ((id id) (t (syntax-local-value id false)))
        (cond
         ((class-type-info? t) id)
         ((interface-info? t) id)
         ((type-reference? t)
          (let (id (type-reference-identifier t))
            (loop id (syntax-local-value id false))))
         ((not t)
          (raise-syntax-error #f "unresolved type" stx id))
         (else
          (raise-syntax-error #f "unexpected type; expected class, interface or type reference" stx id t)))))

    (def (resolve-type->type-descriptor stx id)
      (let (t (resolve-type stx id))
        (cond
         ((class-type-info? t)
          (!class-type-descriptor t))
         ((interface-info? t)
          (interface-info-instance-type t))
         (else
          (raise-syntax-error #f "unexpected type; expected class, interface or type reference" stx id t))))))

  (defrules deftype ()
    ((_ reference-id type-id)
     (and (identifier? #'reference-id)
          (identifier? #'type-id))
     (defsyntax reference-id
       (make-type-reference identifier: (quote-syntax type-id))))))

(module TypeCast
  (import TypeReference (phi: +1 InterfaceInfo))
  (export #t)
  ;; checked type cast
  (defsyntax (: stx)
    (syntax-case stx ()
      ((_ expr type)
       (identifier? #'type)
       (let (meta (resolve-type stx #'type))
         (cond
          ((class-type-info? meta)
           (with-syntax ((klass (!class-type-descriptor meta))
                         (predicate (!class-type-predicate meta)))
             (if (memq (!class-type-id meta)
                       ;; everything is t, void we don't need to check.
                       '(t void))
               #'(begin-annotation (@type klass) expr)
               #'(begin-annotation (@type klass)
                 (let (val expr)
                   (if (predicate val)
                     val
                     (error "bad cast" klass val)))))))
          ((interface-info? meta)
           (with-syntax ((klass (interface-info-instance-type meta))
                         (cast-it (resolve-type->identifier stx #'type)))
             #'(begin-annotation (@type klass)
                 (cast-it expr))))
          (else
           (raise-syntax-error #f "not a class type or interface" stx #'type)))))))

  ;; OrFalse type assertion; #f is allowed (the null pointer, oh boy)
  (defsyntax (:? stx)
    (syntax-case stx ()
      ((_ expr type)
       (identifier? #'type)
       (let (meta (resolve-type stx #'type))
         (cond
          ((class-type-info? meta)
           (with-syntax ((klass (!class-type-descriptor meta))
                         (predicate (!class-type-predicate meta)))
             (if (memq (!class-type-id meta)
                       ;; everything is t, void we don't need to check.
                       '(t void))
               #'(begin-annotation (@type klass) expr)
               #'(begin-annotation (@type klass)
                   (let (val expr)
                     (if (or (not val) (predicate val))
                       val
                       (contract-violation! "bad cast" expr predicate val)))))))
          ((interface-info? meta)
           (with-syntax ((klass (interface-info-instance-type meta))
                         (cast-it (resolve-type->identifier stx #'type)))
             #'(begin-annotation (@type klass)
                 (let (val expr)
                   (and val (cast-it val))))))
          (else
           (raise-syntax-error #f "not a class type or interface" stx #'type)))))))


  ;; type assertion (unchecked cast)
  (defsyntax (:- stx)
    (syntax-case stx ()
      ((_ expr type)
       (identifier? #'type)
       (with-syntax ((klass (resolve-type->type-descriptor stx #'type)))
         #'(begin-annotation (@type klass) expr)))))

  ;; predicate contract check
  (defrules :~ (:-)
    ((_ expr predicate)
     (let (val expr)
       (if (predicate val)
         val
         (contract-violation! expr predicate val))))
    ((_ expr predicate :- type)
     (:- (:~ expr predicate) type)))

  ;; uncasted interface, but checked interface method invocations
  (defrules ::- ())

  ;; default value
  (defrules := ())

  ;; nil checks
  (defrules check-nil! ()
    ((_ expr)
     (or expr (nil-dereference! expr))))

  (defsyntax (contract-violation! stx)
    (syntax-case stx ()
      ((macro ctx contract-expr value)
       (with-syntax ((src-ctx
                      (cond
                       ((or (stx-source #'ctx)
                            (stx-source stx)
                            (stx-source #'macro))
                        => (lambda (locat)
                             (call-with-output-string ""
                               (cut ##display-locat locat #t <>))))
                       (else
                        (expander-context-id (core-context-top))))))
         #'(abort!
            (raise-contract-violation-error
             "contract violation"
             context: 'src-ctx contract: 'contract-expr value: value))))))

  (defsyntax (nil-dereference! stx)
    (syntax-case stx ()
      ((macro expr)
       (with-syntax ((src-ctx
                      (cond
                       ((or (stx-source #'expr)
                            (stx-source stx)
                            (stx-source #'macro))
                        => (lambda (locat)
                             (call-with-output-string ""
                               (cut ##display-locat locat #t <>))))
                       (else
                        (expander-context-id (core-context-top))))))
         #'(abort!
            (raise-contract-violation-error
               "nil (#f) derefence"
               context: 'src-ctx contract: '(check-nil! expr) value: #f))))))

  (defrule (abort! expr)
    (begin-annotation (@abort)
      (begin
        expr
        ;; abort means the exception is not continuable
        ;; create a frame for the stack trace
        (void)))))

(module TypeEnv
  (import "expander")
  (export #t)
  (defstruct type-env (var type checked? super)
    final: #t)

  (def (current-type-env)
    (syntax-local-value (syntax-local-introduce '@@type) false))

  (def (type-env-lookup var)
    (let loop ((te (current-type-env)))
      (cond
       ((not te) #f)
       ((free-identifier=? var (type-env-var te)) te)
       (else (loop (type-env-super te)))))))

(module Using
  (import TypeCast TypeReference (phi: +1 InterfaceInfo TypeEnv))
  (export #t (phi: +1 #t))

  (defsyntax (using stx)
    (syntax-case stx (:~)
      ((_ (id expr ~ contract) body ...)
       (and (identifier? #'id)
            (identifier? #'~)
            (or (free-identifier=? #'~ #':)
                (free-identifier=? #'~ #':-)
                (free-identifier=? #'~ #'::-)
                (free-identifier=? #'~ #':~)
                (free-identifier=? #'~ #':?)))
       #'(let (id expr)
           (using (id ~ contract)
             body ...)))
      ((_ (id expr :~ contract ~ Type) body ...)
       (and (identifier? #'id)
            (identifier? #'Type)
            (identifier? #'~)
            (or (free-identifier=? #'~ #':)
                (free-identifier=? #'~ #':-)
                (free-identifier=? #'~ #'::-)
                (free-identifier=? #'~ #':?)))
       #'(let (id expr)
           (using (id :~ contract)
             (using (id ~ Type)
               body ...))))
      ((_ (id ~ Type) body ...)
       (and (identifier? #'id)
            (identifier? #'Type)
            (identifier? #'~)
            (or (free-identifier=? #'~ #':)
                (free-identifier=? #'~ #':-)
                (free-identifier=? #'~ #'::-)
                (free-identifier=? #'~ #':?)))
       (let (meta (resolve-type stx #'Type))
         (cond
          ((interface-info? meta)
           #'(with-interface (id ~ Type) body ...))
          ((class-type-info? meta)
           #'(with-class (id ~ Type) body ...))
          (else
           (raise-syntax-error #f "unexpected type; must be a class type or interface" stx #'Type meta)))))
      ((_ (id :~ pred) body ...)
       (identifier? #'id)
       #'(with-contract (id :~ pred) body ...))
      ((_ (id :~ pred ~ Type) body ...)
       (and (identifier? #'id)
            (identifier? #'Type)
            (identifier? #'~)
            (or (free-identifier=? #'~ #':)
                (free-identifier=? #'~ #':-)
                (free-identifier=? #'~ #'::-)
                (free-identifier=? #'~ #':?)))
       #'(using (id :~ pred)
           (using (id ~ Type)
             body ...)))
      ((_ ((hd . contract) . rest) body ...)
       (identifier? #'hd)
       #'(using (hd . contract) (using rest body ...)))
      ((_ () body ...)
       #'(let () body ...))))

  (defrules with-contract (:~)
    ((_ (id :~ predicate-expr) body ...)
     (identifier? #'id)
     (if (predicate-expr id)
       (let () body ...)
       (contract-violation! id predicate-expr id))))

  (begin-syntax
    (def (!class-slot-type klass slot)
      (cond
       ((!class-type-slot-types klass)
        => (lambda (slot-types)
             (assgetq slot slot-types)))
       (else #f)))

    (def (!class-slot-default klass slot)
      (cond
       ((!class-type-slot-defaults klass)
        => (lambda (slot-defaults)
             (cond
              ((assgetq slot slot-defaults) => syntax-local-introduce)
              (else #f))))
       (else #f)))

    (def (!class-slot-contract klass slot)
      (cond
       ((!class-type-slot-defaults klass)
        => (lambda (slot-defaults)
             (cond
              ((assgetq slot slot-defaults) => syntax-local-introduce)
              (else #f))))
       (else #f)))

    (def (!class-slot-checked-method-contract? klass slot)
      (alet (contract (!class-slot-contract klass slot))
        (syntax-case contract (:~ : :- ::- :?)
          ((~ type)
           (and (identifier? #'~)
                (or (free-identifier=? #'~ #':)
                    (free-identifier=? #'~ #':-)
                    (free-identifier=? #'~ #'::-)
                    (free-identifier=? #'~ #':?)))
           (not (free-identifier=? #'~ #':-)))
          ((:~ pred-expr ~ type)
           (and (identifier? #'~)
                (or (free-identifier=? #'~ #':)
                    (free-identifier=? #'~ #':-)
                    (free-identifier=? #'~ #'::-)
                    (free-identifier=? #'~ #':?)))
           (not (free-identifier=? #'~ #':-)))
          ((:~ pred-expr)
           #f))))

    (def (!class-slot-checked-mutator-contract? klass slot)
      (alet (contract (!class-slot-contract klass slot))
        (syntax-case contract (:~ : :- ::- :?)
          ((~ type)
           (and (identifier? #'~)
                (or (free-identifier=? #'~ #':)
                    (free-identifier=? #'~ #':-)
                    (free-identifier=? #'~ #'::-)
                    (free-identifier=? #'~ #':?)))
           (not (free-identifier=? #'~ #':-)))
          ((:~ pred-expr ~ type)
           (and (identifier? #'~)
                (or (free-identifier=? #'~ #':)
                    (free-identifier=? #'~ #':-)
                    (free-identifier=? #'~ #'::-)
                    (free-identifier=? #'~ #':?)))
           #t)
          ((:~ pred-expr)
           #t))))

    (def (dotted-identifier? id)
      (and (identifier? id)
           (let (str (symbol->string (stx-e id)))
             (alet (index (string-index str #\.))
               (and (fx> index 0)
                    (not (ormap string-empty? (string-split str #\.))))))))

    (def (split-dotted-identifier stx id)
      (let (parts (string-split (symbol->string (stx-e id)) #\.))
        (if (find string-empty? parts)
          (raise-syntax-error #f "bad dotted identifier" stx id)
          (cons (stx-identifier id (car parts))
                (map string->symbol (cdr parts))))))

    (def (get-slot-accessor stx klass-or-id slot)
      (let* ((klass (if (identifier? klass-or-id)
                      (resolve-type stx klass-or-id)
                      klass-or-id))
             (accessors (!class-type-unchecked-accessors klass)))
        (cond
         ((assgetq slot accessors))
         (else
          (raise-syntax-error #f "no accessor for slot" stx klass slot)))))

    (def (get-slot-mutator stx klass-or-id slot checked?)
      (let* ((klass (if (identifier? klass-or-id)
                      (resolve-type stx klass-or-id)
                      klass-or-id))
             (mutators (if checked?
                         (!class-type-mutators klass)
                         (!class-type-unchecked-mutators klass))))
        (cond
         ((assgetq slot mutators))
         (else
          (raise-syntax-error #f "no mutator for slot" stx klass slot))))))

  (defsyntax (with-class stx)
    (def (expand-body klass var Type body checked?)
      (with-syntax ((@@type (syntax-local-introduce '@@type))
                    (Type::t (!class-type-descriptor klass))
                    (var var)
                    (klass klass)
                    (checked? checked?)
                    (cte (current-type-env))
                    ((body ...) body))
        #'(let (var (begin-annotation (@type Type::t) var))
            (let-syntax ((@@type
                          (make-type-env (quote-syntax var)
                                         'klass
                                         checked?
                                         'cte)))
              (let () body ...)))))

    (def (expand var Type body checked? checked-mutators? maybe?)
      (let* ((klass (syntax-local-value Type false))
             (expr-body (expand-body klass var Type body (or checked? checked-mutators?))))
        (if checked?
          (with-syntax ((predicate
                         (let (instance? (!class-type-predicate klass))
                           (if maybe?
                             `(? (or not ,instance?))
                             instance?)))
                        (var var)
                        (expr-body expr-body))
            #'(with-contract (var :~ predicate)
                expr-body))
          expr-body)))

    (syntax-case stx (: :? :- ::-)
      ((_ (var ~ @Type) body ...)
       (type-reference? (syntax-local-value #'@Type false))
       (with-syntax ((Type (type-reference-identifier (syntax-local-value #'@Type))))
         #'(with-class (var ~ Type) body ...)))
      ((_ (var : Type) body ...)
       (syntax-local-class-type-info? #'Type)
       (expand #'var #'Type #'(body ...) #t #t #f))
      ((_ (var :? Type) body ...)
       (syntax-local-class-type-info? #'Type)
       (expand #'var #'Type #'(body ...) #t #t #t))
      ((_ (var :- Type) body ...)
       (syntax-local-class-type-info? #'Type)
       (expand #'var #'Type #'(body ...) #f #f #f))
      ((_ (var ::- Type) body ...)
       (syntax-local-class-type-info? #'Type)
       (expand #'var #'Type #'(body ...) #f #t #f))))

  (defsyntax (with-interface stx)
    (def (expand-body var Interface body checked?)
      (let (type (resolve-type stx Interface))
        (with-syntax ((@@type (syntax-local-introduce '@@type))
                      (type type)
                      (Instance::t (interface-info-instance-type type))
                      (var var)
                      (checked? checked?)
                      (cte (current-type-env))
                      ((body ...) body))
          #'(let (var (begin-annotation (@type Instance::t) var))
              (let-syntax ((@@type
                            (make-type-env (quote-syntax var)
                                           'type
                                           checked?
                                           'cte)))
                (let () body ...))))))

    (def (expand var Interface body checked? checked-methods? maybe?)
      (with-syntax ((expr-body (expand-body var Interface body (or checked? checked-methods?))))

        (if checked?
          (if maybe?
            (with-syntax ((var var)
                          (Interface Interface))
              #'(let (var (Interface var))
                  (if var
                    expr-body
                    (nil-dereference! var))))
            (with-syntax ((var var) (Interface Interface))
              #'(let (var (Interface var))
                  expr-body)))
          (if maybe?
            (with-syntax ((var var))
              #'(if var
                  expr-body
                  (nil-dereference! var)))
            #'expr-body))))

    (syntax-case stx (: :? :- ::-)
      ((_ (var ~ @Type) body ...)
       (type-reference? (syntax-local-value #'@Type false))
       (with-syntax ((Type (type-reference-identifier (syntax-local-value #'@Type))))
         #'(with-interface (var ~ Type) body ...)))
      ((_ (var : Interface) body ...)
       (and (identifier? #'var)
            (syntax-local-interface-info? #'Interface))
       (expand #'var #'Interface #'(body ...) #t #t #f))
      ((_ (var :? Interface) body ...)
       (and (identifier? #'var)
            (syntax-local-interface-info? #'Interface))
       (expand #'var #'Interface #'(body ...) #t #t #t))
      ((_ (var :- Interface) body ...)
       (and (identifier? #'var)
            (syntax-local-interface-info? #'Interface))
       (expand #'var #'Interface #'(body ...) #f #f #f))
      ((_ (var ::- Interface) body ...)
       (and (identifier? #'var)
            (syntax-local-interface-info? #'Interface))
       (expand #'var #'Interface #'(body ...) #f #t #f))))

  (defsyntax (%%app-dotted stx)
    (syntax-case stx (%%ref-dotted)
      ((_ id rand ...)
       (identifier? #'id)
       #'(%%app-dotted (%%ref-dotted id) rand ...))
      ((_ (%%ref-dotted id) rand ...)
       (if (dotted-identifier? #'id)
         (with ([var . parts] (split-dotted-identifier stx #'id))
           (cond
            ((type-env-lookup var)
             => (lambda (te)
                  (let loop ((parts parts)
                             (type (type-env-type te))
                             (object var)
                             (checked-method? (type-env-checked? te))
                             (nil-check? #f))
                    (match parts
                      ([part . rest]
                       (cond
                        ((and (not nil-check?) (string-prefix? "?" (symbol->string part)))
                         (let (str (symbol->string part))
                           (loop (cons (string->symbol
                                        (substring str 1 (string-length str)))
                                       rest)
                                 type object checked-method? #t)))
                        ((class-type-info? type)
                         (with-syntax ((object
                                        (if nil-check?
                                          ['check-nil! object]
                                          object))
                                       (accessor (get-slot-accessor stx type part)))
                           (cond
                            ((null? rest)
                             #'(%%app (accessor object) rand ...))
                            ((!class-slot-type type part)
                             => (lambda (slot-type)
                                  (let (slot-type (resolve-type stx slot-type))
                                    (loop rest slot-type
                                          #'(accessor object)
                                          (!class-slot-checked-method-contract? type part)
                                          #f))))
                            (else
                             (raise-syntax-error #f "unresolved dotted reference; unknown type for slot" stx #'id part)))))
                        ((interface-info? type)
                         (if (null? rest)
                           (with-syntax ((object
                                          (if nil-check?
                                            ['check-nil! object]
                                            object))
                                         (method
                                          (stx-identifier #'id
                                            (if checked-method? "" "&")
                                            (interface-info-name type)
                                            "-" part)))
                             #'(method object rand ...))
                           (raise-syntax-error #f "illegal dotted reference; interface has no slots" stx #'id part)))
                        (else
                         (raise-syntax-error #f "unexpected type" stx type))))
                      (else
                       (with-syntax ((rator object))
                         #'(%%app rator rand ...)))))))
            (else
             ;; no type info for base of dots, dispatch to %%app
             #'(%%app id rand ...))))
         #'(%%app id rand ...)))
      ((_ arg ...)
       #'(%%app arg ...))))

  (defsyntax (%%ref-dotted stx)
    (syntax-case stx ()
      ((_ id)
       (dotted-identifier? #'id)
       (with ([var . parts] (split-dotted-identifier stx #'id))
         (cond
          ((type-env-lookup var)
           => (lambda (te)
                (let loop ((parts parts) (type (type-env-type te)) (object var) (nil-check? #f))
                  (match parts
                    ([part . rest]
                     (cond
                      ((and (not nil-check?) (string-prefix? "?" (symbol->string part)))
                       (let (str (symbol->string part))
                         (loop (cons (string->symbol
                                      (substring str 1 (string-length str)))
                                     rest)
                               type object #t)))
                      ((class-type-info? type)
                       (with-syntax ((object
                                      (if nil-check?
                                        `(check-nil! ,object)
                                        object))
                                     (accessor (get-slot-accessor stx type part)))
                         (cond
                          ((null? rest)
                           (cond
                            ((!class-slot-type type part)
                             => (lambda (slot-type)
                                  (with-syntax ((slot-type (resolve-type->type-descriptor stx slot-type)))
                                    #'(begin-annotation (@type slot-type)
                                        (accessor object)))))
                            (nil-check?
                             #'(accessor (check-nil! object)))
                            (else
                             #'(accessor object))))
                          ((!class-slot-type type part)
                           => (lambda (type)
                                (let (type (resolve-type stx type))
                                  (if nil-check?
                                    (loop rest type #'(accessor (check-nil! object)) #f)
                                    (loop rest type #'(accessor object) #f)))))
                          (else
                           (raise-syntax-error #f "unresolved dotted reference; unknown type for slot" stx #'id part)))))
                      ((interface-info? type)
                       (raise-syntax-error #f "illegal dotted reference; interface has no slots"))
                      (else
                       (raise-syntax-error #f "unexpected type" stx type))))
                    (else object)))))
          (else
           ;; no type info for base of dots, dispatch to %%ref
           #'(%%ref id)))))
      ((_ id)
       #'(%%ref id))))

  (defsyntax (%%set-dotted! stx)
    (syntax-case stx ()
      ((_ id value)
       (dotted-identifier? #'id)
       (with ([var . parts] (split-dotted-identifier stx #'id))
         (cond
          ((type-env-lookup var)
           => (lambda (te)
                (let loop ((parts parts)
                           (type (type-env-type te))
                           (object var)
                           (checked-mutator? (type-env-checked? te))
                           (nil-check? #f))
                  (match parts
                    ([part . rest]
                     (cond
                      ((and (not nil-check?) (string-prefix? "?" (symbol->string part)))
                       (let (str (symbol->string part))
                         (loop (cons (string->symbol
                                      (substring str 1 (string-length str)))
                                     rest)
                               type object checked-mutator? #t)))
                      ((class-type-info? type)
                       (cond
                        ((null? rest)
                         (with-syntax ((object object)
                                       (mutator
                                        (get-slot-mutator
                                         stx type part
                                         ;; invoke the checked mutator if the contract
                                         ;; was checked and the slot has a contract
                                         ;; to be checked
                                         (and checked-mutator?
                                              (!class-slot-contract type part)))))
                           (if nil-check?
                             #'(mutator (check-nil! object) value)
                             #'(mutator object value))))
                        ((!class-slot-type type part)
                         => (lambda (type)
                              (let (type (resolve-type stx type))
                                (with-syntax ((object
                                               (if nil-check?
                                                 `(check-nil! ,object)
                                                 object))
                                              (accessor (get-slot-accessor stx type part)))
                                  (loop rest type
                                          #'(accessor object)
                                          (!class-slot-checked-mutator-contract? type part)
                                          #f)))))
                        (else
                         (raise-syntax-error #f "unresolved dotted reference; unknown type for slot" stx #'id part))))
                      ((interface-info? type)
                       (raise-syntax-error #f "illegal dotted reference; interface has no slots"))
                      (else
                       (raise-syntax-error #f "unexpected type" stx type))))))))
          (else
           ;; no type info for base of dots, dispatch to set!
           (expand-set! stx)))))
      ((_ target value)
       (expand-set! stx)))))

(module ContractRules
  (export #t)

  (defrule (maybe pred)
    (? (or not pred)))

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
           (andmap pred o)))))

(module ClassMeta
  (export #t)
  (import "expander" MOP-2
          (for-template TypeCast))
  (def (!class-precedence-list klass)
    (cond
     ((!class-type-precedence-list klass))
     (else
      (let* (((values precedence-list base-struct)
              (c4-linearize [] (!class-type-super klass)
                            get-precedence-list:
                            (lambda (klass-id)
                              (cons klass-id (!class-precedence-list (syntax-local-value klass-id))))
                            struct:
                            (lambda (klass-id)
                              (!class-type-struct? (syntax-local-value klass-id)))
                            eq: free-identifier=?
                            get-name: stx-e))
             (precedence-list
              (cond
               ((memq (!class-type-id klass) '(t object class))
                precedence-list)
               ((member ':object precedence-list free-identifier=?)
                precedence-list)
               ((!class-type-system? klass)
                (if (member ':t precedence-list free-identifier=?)
                  precedence-list
                  (append precedence-list [(core-quote-syntax ':t)])))
               (else
                (let loop ((tail precedence-list) (head []))
                  (match tail
                    ([hd . rest]
                     (if (free-identifier=? hd ':t)
                       (foldl cons (cons (core-quote-syntax ':object) tail) head)
                       (loop rest (cons hd head))))
                    (else
                     (foldl cons [(core-quote-syntax ':object)
                                  (core-quote-syntax ':t)]
                            head))))))))
        (set! (!class-type-precedence-list klass) precedence-list)
        precedence-list)))))

(module Interface
  (import TypeCast TypeReference Using
          (phi: +1 InterfaceInfo TypeEnv ClassMeta))
  (export #t (phi: +1 #t))

  (begin-syntax
    (def (check-signature! stx args return
                           optionals: (optionals-allowed? #t)
                           keywords: (keywords-allowed? #t))
      (when (stx-e return)
        (check-valid-type! stx return))
      (check-signature-spec! stx args
                             optionals: optionals-allowed?
                             keywords: keywords-allowed?))

    (def (check-valid-type! stx id)
      (let (info (syntax-local-value id false))
        (cond
         ((or (class-type-info? info)
              (interface-info? info)
              (type-reference? info)))
         ((not info)
          (raise-syntax-error #f "invalid signature; unknown type" stx id))
         (else
          (raise-syntax-error #f "invalid signature; not a a class type or interface" stx id info)))))

    (def (check-signature-spec! stx signature
                                optionals: (optionals-allowed? #t)
                                keywords: (keywords-allowed? #t))
      (let lp ((rest signature) (have-optional? #f) (ids []) (kws []))
        (syntax-case rest ()
          ((id . rest)
           (identifier? #'id)
           (cond
            (have-optional?
             (raise-syntax-error #f "invalid signature; required argument after optionals" stx signature #'id))
            ((not (null? kws))
             (raise-syntax-error #f "invalid signature; positional arguments must precede keyword arguments"))
            ((find (cut bound-identifier=? <> #'id) ids)
             (raise-syntax-error #f "invalid signature; duplicate identifier" stx signature #'id))
            (else
             (lp #'rest have-optional? (cons #'id ids) kws))))
          (((id _) . rest)
           (identifier? #'id)
           (cond
            ((not optionals-allowed?)
             (raise-syntax-error #f "invalid signature; optionals not allowed" stx signature))
            ((not (null? kws))
             (raise-syntax-error #f "invalid signature; positional arguments must precede keyword arguments"))
            ((find (cut bound-identifier=? <> #'id) ids)
             (raise-syntax-error #f "invalid signature; duplicate identifier" stx signature #'id))
            (else
             (lp #'rest #t (cons #'id ids) kws))))
          (((id . contract) . rest)
           (and (identifier? #'id)
                (signature-contract? #'contract))
           (cond
            ((not optionals-allowed?)
             (syntax-case #'contract (:=)
               ((_ ... := default)
                (raise-syntax-error #f "invalid signature; optionals not allowed" stx signature))
               (_ (void))))
            ((not (null? kws))
             (raise-syntax-error #f "invalid signature; positional arguments must precede keyword arguments"))
            (have-optional?
             (syntax-case #'contract (:=)
               ((_ ... := default)
                (begin (check-signature-contract-types! stx #'contract)
                       (lp #'rest #t (cons #'id ids) kws)))
               (_
                (raise-syntax-error #f "invalid signature; expected optional argument" stx signature #'contract))))
            ((find (cut bound-identifier=? <> #'id) ids)
             (raise-syntax-error #f "invalid signature; duplicate identifier" stx signature #'id))
            (else
             (check-signature-contract-types! stx #'contract)
             (lp #'rest have-optional? (cons #'id ids) kws))))
          ((kw id . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (cond
            ((not keywords-allowed?)
             (raise-syntax-error #f "invalid signature; keywords not allowed" stx signature))
            ((find (cut bound-identifier=? <> #'id) ids)
             (raise-syntax-error #f "invalid signature; duplicate identifier" stx signature #'id))
            ((memq (stx-e #'kw) kws)
             (raise-syntax-error #f "invalid signature; duplicate keyword" stx signature #'kw))
            (else
             (lp #'rest have-optional? (cons #'id ids) (cons (stx-e #'kw) kws)))))
          ((kw (id _) . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (cond
            ((not keywords-allowed?)
             (raise-syntax-error #f "invalid signature; keywords not allowed" stx signature))
            ((find (cut bound-identifier=? <> #'id) ids)
             (raise-syntax-error #f "invalid signature; duplicate identifier" stx signature #'id))
            ((memq (stx-e #'kw) kws)
             (raise-syntax-error #f "invalid signature; duplicate keyword" stx signature #'kw))
            (else
             (lp #'rest have-optional? (cons #'id ids) (cons (stx-e #'kw) kws)))))
          ((kw (id . contract) . rest)
           (and (stx-keyword? #'kw)
                (identifier? #'id)
                (signature-contract? #'contract))
           (cond
            ((not keywords-allowed?)
             (raise-syntax-error #f "invalid signature; keywords not allowed" stx signature))
            ((find (cut bound-identifier=? <> #'id) ids)
             (raise-syntax-error #f "invalid signature; duplicate identifier" stx signature #'id))
            ((memq (stx-e #'kw) kws)
             (raise-syntax-error #f "invalid signature; duplicate keyword" stx signature #'kw))
            (else
             (check-signature-contract-types! stx #'contract)
             (lp #'rest have-optional? (cons #'id ids) (cons (stx-e #'kw) kws)))))
          (id (identifier? #'id) #t)
          (() #t)
          (_ (raise-syntax-error #f "invalid signature" stx signature rest)))))

    (def (signature-contract? contract)
      (syntax-case contract (:~ :=)
        ((~ type)
         (and (identifier? #'~)
              (or (free-identifier=? #'~ #':)
                  (free-identifier=? #'~ #':-)
                  (free-identifier=? #'~ #'::-)
                  (free-identifier=? #'~ #':?)))
         (identifier? #'type))
        ((~ type := default)
        (and (identifier? #'~)
              (or (free-identifier=? #'~ #':)
                  (free-identifier=? #'~ #':-)
                  (free-identifier=? #'~ #'::-)
                  (free-identifier=? #'~ #':?)))
        (identifier? #'type))
        ((:~ predicate-expr) #t)
        ((:~ predicate-expr := default) #t)
        ((:~ predicate-expr ~ type)
         (and (identifier? #'~)
              (or (free-identifier=? #'~ #':)
                  (free-identifier=? #'~ #':-)
                  (free-identifier=? #'~ #'::-)
                  (free-identifier=? #'~ #':?)))
         (identifier? #'type))
        ((:~ predicate-expr ~ type := default)
         (and (identifier? #'~)
              (or (free-identifier=? #'~ #':)
                  (free-identifier=? #'~ #':-)
                  (free-identifier=? #'~ #'::-)
                  (free-identifier=? #'~ #':?)))
         (identifier? #'type))
        (_ #f)))

    (def (check-signature-contract-types! stx contract)
      (syntax-case contract (:~)
        ((~ type . maybe-default)
         (and (identifier? #'~)
              (or (free-identifier=? #'~ #':)
                  (free-identifier=? #'~ #':-)
                  (free-identifier=? #'~ #'::-)
                  (free-identifier=? #'~ #':?)))
         (check-valid-type! stx #'type))
        ((:~ predicate-expr ~ type . maybe-default)
         (and (identifier? #'~)
              (or (free-identifier=? #'~ #':)
                  (free-identifier=? #'~ #':-)
                  (free-identifier=? #'~ #'::-)
                  (free-identifier=? #'~ #':?)))
         (check-valid-type! stx #'type))
        (_ (void))))

    (def (signature-arguments-in signature)
      (let loop ((rest signature) (result []))
        (syntax-case rest ()
          ((id . rest)
           (identifier? #'id)
           (loop #'rest (cons #'id result)))
          (((id default) . rest)
           (identifier? #'id)
           (loop #'rest (cons #'(id default) result)))
          (((id . contract) . rest)
           (and (identifier? #'id)
                (signature-contract? #'contract))
           (syntax-case #'contract (:=)
             ((_ ... := default)
              (loop #'rest (cons #'(id default) result)))
             (_ (loop #'rest (cons #'id result)))))
          ((kw id . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (loop #'rest (cons* #'id #'kw result)))
          ((kw (id default) . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (loop #'rest (cons* #'(id default) #'kw result)))
          ((kw (id . contract) . rest)
           (and (stx-keyword? #'kw)
                (identifier? #'id)
                (signature-contract? #'contract))
           (syntax-case #'contract (:=)
             ((_ ... := default)
              (loop #'rest (cons* #'(id default) #'kw result)))
             (_ (loop #'rest (cons* #'id #'kw result)))))
          (id (identifier? #'id) (foldl cons #'id result))
          (_ (reverse! result)))))

    (def (signature-arguments-out signature)
      (let loop ((rest signature) (has-keywords? #f) (result []))
        (syntax-case rest ()
          ((id . rest)
           (identifier? #'id)
           (loop #'rest #f (cons #'id result)))
          (((id _) . rest)
           (identifier? #'id)
           (loop #'rest #f (cons #'id result)))
          (((id . contract) . rest)
           (and (identifier? #'id)
                (signature-contract? #'contract))
           (loop #'rest #f (cons #'id result)))
          ((kw id . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (loop #'rest #t (cons* #'id #'kw result)))
          ((kw (id default) . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (loop #'rest #t (cons* #'id #'kw result)))
          ((kw (id . contract) . rest)
           (and (stx-keyword? #'kw)
                (identifier? #'id)
                (signature-contract? #'contract))
           (loop #'rest #t (cons* #'id #'kw result)))
          (id (identifier? #'id)
              (foldl cons [#'id] result))
          (_ (reverse! result)))))

    (def (make-interface-method-lambda-signature stx self Interface signature return unchecked-proc)
      (if (stx-e unchecked-proc)
        (make-procedure-lambda-signature stx
          (cons [self ': Interface] signature)
          return
          unchecked-proc)
        (let (return-type (resolve-type->type-descriptor stx return))
          [return: return-type])))

    (def (make-interface-method-contract stx self Interface signature checked?)
      (make-procedure-contract stx (cons [self (if checked? ': '::-) Interface] signature) checked?))

    (def (make-procedure-lambda-signature stx signature return unchecked)
      (def (type-e contract)
        (syntax-case contract (: :? :~ :- ::= :=)
          ((: type . maybe-default)
           (resolve-type->type-descriptor stx #'type))
          ((~ type . maybe-default)
           (and (identifier? #'~)
                (or (free-identifier=? #'~ #':-)
                    (free-identifier=? #'~ #'::-)))
           (core-quote-syntax 't::t))
          ((:~ pred-expr : type . maybe-default)
           (resolve-type->type-descriptor stx #'type))
          ((:~ pred-expr ~ type . maybe-default)
           (and (identifier? #'~)
                (or (free-identifier=? #'~ #':-)
                    (free-identifier=? #'~ #'::-)))
           (core-quote-syntax 't::t))
          (_ #f)))

      (let loop ((rest signature) (has-keywords? #f) (result []))
        (syntax-case rest ()
          ((id . rest)
           (identifier? #'id)
           (loop #'rest #f (cons (core-quote-syntax 't::t) result)))
          (((id _) . rest)
           (identifier? #'id)
           (loop #'rest #f (cons (core-quote-syntax 't::t) result)))
          (((id . contract) . rest)
           (and (identifier? #'id)
                (signature-contract? #'contract))
           (loop #'rest #f (cons (type-e #'contract) result)))
          ((kw id . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (loop #'rest #t (cons (core-quote-syntax 't::t) result)))
          ((kw (id _) . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (loop #'rest #t (cons (core-quote-syntax 't::t) result)))
          ((kw (id . contract) . rest)
           (and (stx-keyword? #'kw)
                (identifier? #'id)
                (signature-contract? #'contract))
           (loop #'rest #t (cons (type-e #'contract) result)))
          (id
           (identifier? #'id)
           (let* ((arguments (foldl cons (core-quote-syntax 't::t) result))
                  (arguments (if has-keywords?
                               (cons (core-quote-syntax 't::t)
                                     arguments)
                               arguments))
                  (return-type (resolve-type->type-descriptor stx return))
                  (unchecked (and (stx-e unchecked) (core-quote-syntax unchecked))))
             [arguments: arguments
                         return: return-type
                         unchecked: unchecked]))
          (()
           (let* ((arguments (reverse! result))
                  (arguments (if has-keywords?
                               (cons (core-quote-syntax 't::t)
                                     arguments)
                               arguments))
                  (return-type (resolve-type->type-descriptor stx return))
                  (unchecked (and (stx-e unchecked) (core-quote-syntax unchecked))))
             [arguments: arguments return: return-type unchecked: unchecked])))))

    (def (make-procedure-contract stx signature checked?)
      (def (contract-e id contract)
        (with-syntax ((id id))
          (syntax-case contract (: :? :~ :- ::- :=)
            ((~ type . maybe-default)
             (or (free-identifier=? #'~ #'::-)
                 (free-identifier=? #'~ #':)
                 (free-identifier=? #'~ #':?))
             (if checked?
               #'(id ~ type)
               #'(id ::- type)))
            ((:- type . maybe-default)
             #'(id :- type))
            ((:~ predicate-expr ~ type . maybe-default)
             (or (free-identifier=? #'~ #'::-)
                 (free-identifier=? #'~ #':)
                 (free-identifier=? #'~ #':?))
             (if checked?
               #'(id :~ predicate-expr ~ type)
               #'(id ::- type)))
            ((:~ predicate-expr ~ type . maybe-default)
             (or (free-identifier=? #'~ #'::-)
                 (free-identifier=? #'~ #':)
                 (free-identifier=? #'~ #':?))
             (if checked?
               #'(id :~ predicate-expr ~ type)
               #'(id ::- type)))
            ((:~ predicate-expr :- type . maybe-default)
             (if checked?
               #'(id :~ predicate-expr :- type)
               #'(id :- type)))
            ((:~ predicate-expr . maybe-default)
             (if checked?
               #'(id :~ predicate-expr)
               #'(id :- :t))))))

      (let loop ((rest signature) (result []))
        (syntax-case rest ()
          ((id . rest)
           (identifier? #'id)
           (loop #'rest result))
          (((id _) . rest)
           (identifier? #'id)
           (loop #'rest result))
          (((id . contract) . rest)
           (and (identifier? #'id)
                (signature-contract? #'contract))
           (loop #'rest (cons (contract-e #'id #'contract) result)))
          ((kw id . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (loop #'rest result))
          ((kw (id _) . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (loop #'rest result))
          ((kw (id . contract) . rest)
           (and (stx-keyword? #'kw)
                (identifier? #'id)
                (signature-contract? #'contract))
           (loop #'rest (cons (contract-e #'id #'contract) result)))
          (_ (reverse! (filter identity result))))))

    (def (compatible-signatures? left right)
      (let/cc return
        (let ((left-arity (signature-arity left))
              (right-arity (signature-arity right)))
          (unless (equal? left-arity right-arity)
            (return #f)))
        (let ((left-kws (signature-keywords left))
              (right-kws (signature-keywords right)))
          (unless (equal? left-kws right-kws)
            (return #f)))
        (let (((values left-positional-contract left-kw-contract)
               (signature-type-contract left))
              ((values right-positional-contract right-kw-contract)
               (signature-type-contract right)))
          (let ((left-contract
                 (append left-positional-contract
                         (foldr (lambda (kwc r) (cons (cdr kwc) r))
                                [] left-kw-contract)))
                (right-contract
                 (append right-positional-contract
                         (foldr (lambda (kwc r) (cons (cdr kwc) r))
                                [] right-kw-contract))))
            (unless (compatible-signature-type-contract? left-contract right-contract)
              (return #f))))
        #t))

    (def (compatible-signature-type-contract? left right)
      (let loop ((left-rest left) (right-rest right))
        (match left-rest
          ([left . left-rest]
           (match right-rest
             ([right . right-rest]
              (and (compatible-type-contract? left right)
                   (loop left-rest right-rest)))
             (else #f)))
          (else (null? right-rest)))))

    (def (compatible-type-contract? left right)
      (andmap
       (lambda (a b)
         (syntax-case a (: :? :- :~ :=)
           ((~ type-a . _)
            (or (free-identifier=? #'~ #':)
                (free-identifier=? #'~ #':-))
            (syntax-case b (:~)
              ((~ type-b . _)
               (or (free-identifier=? #'~ #':)
                   (free-identifier=? #'~ #':?)
                   (free-identifier=? #'~ #':-))
               (contract-type-subtype? #'type-a #'type-b))
              ((:~ pred ~ type-b . _)
               (or (free-identifier=? #'~ #':)
                   (free-identifier=? #'~ #':?)
                   (free-identifier=? #'~ #':-))
               (contract-type-subtype? #'type-a #'type-b))
              ((:~ pred := _) #t)))
           ((:? type-a . _)
            (syntax-case b (:~ :?)
              ((:? type-b . _)
               (contract-type-subtype? #'type-a #'type-b))
              ((:~ pred :? type-b . _)
               (contract-type-subtype? #'type-a #'type-b))
              (_ #f)))
           ((:- type-a . _)
            (syntax-case b (:~ :=)
              ((~ type-b . _)
               (or (free-identifier=? #'~ #':)
                   (free-identifier=? #'~ #':?)
                   (free-identifier=? #'~ #':-))
               (contract-type-subtype? #'type-a #'type-b))
              ((:~ pred ~ type-b . rest)
               (or (free-identifier=? #'~ #':)
                   (free-identifier=? #'~ #':?)
                   (free-identifier=? #'~ #':-))
               (contract-type-subtype? #'type-a #'type-b))
              ((:~ pred := _) #t)))
           ((:~ pred-a : type-a . _)
            (syntax-case b (:~)
              ((~ type-b . _)
               (or (free-identifier=? #'~ #':)
                   (free-identifier=? #'~ #':?)
                   (free-identifier=? #'~ #':-))
               (contract-type-subtype? #'type-a #'type-b))
              ((:~ pred-b ~ type-b . _)
               (contract-type-subtype? #'type-a #'type-b))
              ((:~ pred := _) #t)))
           ((:~ pred-a :? type-a . _)
            (syntax-case b (:? :~)
              ((:? type-b . _)
               (contract-type-subtype? #'type-a #'type-b))
              ((:~ pred-b :? type-b . _)
               (contract-type-subtype? #'type-a #'type-b))
              (_ #f)))
           ((:~ pred-a :- type-a . _)
            (syntax-case b (:~)
              ((~ type-b . _)
               (or (free-identifier=? #'~ #':)
                   (free-identifier=? #'~ #':?)
                   (free-identifier=? #'~ #':-))
               (contract-type-subtype? #'type-a #'type-b))
              ((:~ pred-b ~ type-b . _)
               (or (free-identifier=? #'~ #':)
                   (free-identifier=? #'~ #':?)
                   (free-identifier=? #'~ #':-))
               (contract-type-subtype? #'type-a #'type-b))
              ((:~ pred-b := _) #t)))
           ((:~ pred-a . _)
            (syntax-case b (: :? :- :~)
              ((~ . _)
               (or (free-identifier=? #'~ #':)
                   (free-identifier=? #'~ #':?)
                   (free-identifier=? #'~ #':-))
               #f)
              ((:~ pred-b ~ . _)
               (or (free-identifier=? #'~ #':)
                   (free-identifier=? #'~ #':?)
                   (free-identifier=? #'~ #':-))
               #f)
              (_ #t)))))
       left right))

    (def (contract-type-subtype? type-a type-b)
      (cond
       ((not type-a) (not type-b))
       ((not type-b) #f)
       ((free-identifier=? type-a type-b) #t)
       (else
        (let again ((klass-a (syntax-local-value type-a))
                    (klass-b (syntax-local-value type-b)))
          (cond
           ((eq? klass-a klass-b) #t)
           ((class-type-info? klass-a)
            (cond
             ((class-type-info? klass-b)
              (cond
               ((eq? (!class-type-id klass-a) (!class-type-id klass-b))
                #t)
               ((member type-b (!class-precedence-list klass-a) free-identifier=?)
                #t)
               (else #f)))
             ((type-reference? klass-b)
              (cond
               ((syntax-local-value (type-reference-identifier klass-b) false)
                => (lambda (klass-b) (again klass-a klass-b)))
               ;; the type reference cannot be resolved at this time, maybe it is
               ;; a (mutually) recursive type reference.
               ;; best we can do is ensure that it refers to the same type
               ((free-identifier=? type-a (type-reference-identifier klass-b))
                #t)
               (else #f)))
             (else #f)))
           ((interface-info? klass-a)
            (cond
             ((interface-info? klass-b)
              (cond
               ((member type-b (interface-info-flatten-mixin klass-a))
                #t)
               (else #f)))
             ((type-reference? klass-b)
              (cond
               ((syntax-local-value (type-reference-identifier klass-b) false)
                => (lambda (klass-b) (again klass-a klass-b)))
               ;; the type reference cannot be resolved at this time, maybe it is
               ;; a (mutually) recursive type reference.
               ;; best we can do is ensure that it refers to the same type
               ((free-identifier=? type-a (type-reference-identifier klass-b))
                #t)
               (else #f)))
             (else #f)))
           ((type-reference? klass-a)
            (cond
             ((syntax-local-value (type-reference-identifier klass-a) false)
              => (lambda (klass-a) (again klass-a klass-b)))
             ((type-reference? klass-b)
              (cond
               ((syntax-local-value (type-reference-identifier klass-b) false)
                => (lambda (klass-b) (again klass-a klass-b)))
               ;; the best we can do is check that they refer to the same type
               ((free-identifier=? (type-reference-identifier klass-a) (type-reference-identifier klass-b))
                #t)
               (else #f)))
             ;; the type reference cannot be resolved at this time, maybe it is
             ;; a (mutually) recursive type reference.
             ;; best we can do is ensure that it refers to the same type
             ((free-identifier=? type-b (type-reference-identifier klass-a))
              #t)
             (else #f)))
           (else #f))))))

    (def (signature-type-contract signature)
      (let loop ((rest signature) (positionals []) (keywords []))
        (syntax-case #'rest ()
          ((id . rest)
           (identifier? #'id)
           (loop #'rest (cons #'(:- :t) positionals) keywords))
          (((id default) . rest)
           (identifier? #'id)
           (loop #'rest (cons #'(:- :t) positionals) keywords))
          ((id . contract)
           (identifier? #'id)
           (loop #'rest (cons #'contract positionals) keywords))
          ((kw id . rest)
           (and (stx-keyword? #'kw)
                (identifier? #'id))
           (loop #'rest positionals
                 (cons (cons* (stx-e #'kw) #'id #'(:- :t))
                       keywords)))
          ((kw (id default) . rest)
           (and (stx-keyword? #'kw)
                (identifier? #'id))
           (loop #'rest positionals
                 (cons (cons* (stx-e #'kw) #'id #'(:- :t))
                       keywords)))
          ((kw (id . contract) . rest)
           (loop #'rest positionals
                 (cons (cons* (stx-e #'kw) #'id #'contract)
                       keywords)))
          (_ (values (reverse! positionals)
                     (list-sort (lambda (a b) (keyword<? (stx-car a) (stx-car b)))
                                keywords))))))


    (def (signature-arity spec)
      (let lp ((rest (stx-cdr spec)) (required 0) (optional 0))
        (syntax-case rest (:=)
          ((id . rest)
           (identifier? #'id)
           (lp #'rest (1+ required) optional))
          (((id default) . rest)
           (identifier? #'id)
           (lp #'rest required (1+ optional)))
          (((_ ... := default) . rest)
           (lp #'rest required (1+ optional)))
          (((id . _) . rest)
           (identifier? #'id)
           (lp #'rest (1+ required) optional))
          ((kw _ . rest)
           (stx-keyword? #'kw)
           (lp #'rest required optional))
          (id
           (identifier? #'id)
           [required optional '...])
          (()
           [required optional]))))

    (def (signature-keywords spec)
      (let lp ((rest spec) (keywords []))
        (syntax-case rest ()
          ((id . rest)
           (identifier? #'id)
           (lp #'rest keywords))
          (((id . _) . rest)
           (identifier? #'id)
           (lp #'rest keywords))
          ((kw _ . rest)
           (stx-keyword? #'kw)
           (lp #'rest (cons (stx-e #'kw) keywords)))
          (_  (list-sort keyword<? keywords)))))

    (def (symbol<? x y)
      (string<? (symbol->string (stx-e x)) (symbol->string (stx-e y))))
    (def (keyword<? x y)
      (string<? (keyword->string (stx-e x)) (keyword->string (stx-e y)))))

  (defsyntax (interface stx)
    (def (fold-methods mixin specs)
      (let* ((methods (fold-specs specs))
             (methods (fold-mixins mixin methods)))
        ;; processing:
        ;; - verify method compatibility
        ;; - remove duplicates from mixins
        ;; - sort lexicographically
        (let lp ((rest methods) (methods []))
          (match rest
            ([method . rest]
             (cond
              ((find (lambda (other) (stx-eq? (stx-car method) (stx-car other))) rest)
               => (lambda (duplicate)
                    (if (compatible-signatures? duplicate method)
                      (lp rest methods)
                      (raise-syntax-error #f "invalid interface specification; incompatible method signatures" stx method duplicate))))
              (else
               (lp rest (cons method methods)))))
            (else
             (list-sort (lambda (x y) (symbol<? (stx-car x) (stx-car y)))
                        methods))))))

    (def (fold-mixins mixin methods)
      (foldl
        (lambda (mixin methods)
          (cond
           ((syntax-local-value mixin false)
            => (lambda (info)
                 (if (interface-info? info)
                   (foldl cons methods (map syntax-local-introduce (interface-info-interface-methods info)))
                   (raise-syntax-error #f "invalid mixin; not an interface type" stx mixin info))))
           (else
            (raise-syntax-error #f "invalid mixin; unknown type" stx mixin))))
        methods mixin))

    (def (fold-specs specs)
      (let loop ((rest specs) (methods []))
        (syntax-case rest (=>)
          (((id . args) => return-type . rest)
           (and (identifier? #'id)
                (identifier? #'return-type))
           (begin
             (check-signature! stx #'args #'return-type)
             (loop #'rest (cons [#'id #'args #'return-type] methods))))
          (((id . args) . rest)
           (identifier? #'id)
           (begin
             (check-signature! stx #'args #f)
             (loop #'rest (cons [#'id #'args (core-quote-syntax ':t)] methods))))
          (() methods)
          (bad (raise-syntax-error #f "invalid interface specification" stx #'bad)))))

    (def (make-method-defs Interface)
      (lambda (method offset)
        (let (signature (stx-car (stx-cdr method)))
          (with-syntax ((Interface Interface)
                        (method method)
                        (method-name (stx-car method))
                        (self (syntax-local-introduce 'self))
                        (offset offset)
                        ((out ...) (signature-arguments-out signature)))
            (if (stx-list? signature)
              (syntax/loc stx
                (definterface-method Interface method
                  (declare (not safe))
                  (let ((obj (##unchecked-structure-ref self 1 #f 'method-name))
                        (f   (##unchecked-structure-ref self offset #f 'method-name)))
                    (f obj out ...))))
              (syntax/loc stx
                (definterface-method Interface method
                  (declare (not safe))
                  (let ((obj (##unchecked-structure-ref self 1 #f 'method-name))
                        (f   (##unchecked-structure-ref self offset #f 'method-name)))
                    (##apply f obj out ...)))))))))

    (syntax-case stx ()
      ((_ hd spec ...)
       (or (identifier? #'hd)
           (identifier-list? #'hd))
       (with-syntax* ((name (if (identifier? #'hd) #'hd (stx-car #'hd)))
                      (klass (stx-identifier #'name #'name "::t"))
                      (klass-quoted (core-quote-syntax #'klass))
                      (klass-type-id (make-class-type-id #'name))
                      (descriptor (stx-identifier #'name #'name "::interface"))
                      (make (stx-identifier #'name "make-" #'name))
                      (try-make (stx-identifier #'name "try-" #'name))
                      (predicate (stx-identifier #'name #'name "?"))
                      (instance-predicate (stx-identifier #'name "is-" #'name "?"))
                      ((mixin ...)
                       (if (identifier? #'hd) [] (stx-cdr #'hd)))
                      ((method ...)
                       (fold-methods #'(mixin ...) #'(spec ...)))
                      ((method-name ...)
                       (map stx-car #'(method ...)))
                      ((method-signature ...)
                       (map stx-cdr #'(method ...)))
                      ((method-impl-name ...)
                       (map (lambda (method-name)
                              (stx-identifier #'name #'name "-" method-name))
                            #'(method-name ...)))
                      ((unchecked-method-impl-name ...)
                       (map (lambda (method-name)
                              (stx-identifier #'name "&" #'name "-" method-name))
                            #'(method-name ...)))
                      ((defmethod-impl ...)
                       (map (make-method-defs #'name)
                            #'(method ...)
                            (iota (length #'(method-name ...)) 2)))
                      (defklass
                        #'(def klass
                            (begin-annotation (@mop.class klass-type-id
                                                          (interface-instance::t)
                                                          (method-name ...)
                                                          #f #t #t #f)
                              (make-class-type 'klass-type-id ; type id
                                               'name          ; name
                                               [interface-instance::t] ; super
                                               '(method-name ...) ; direct slots
                                               '((final: . #t) (struct: . #t)) ; plist
                                               #f)))) ; constructor (none)
                      (defdescriptor
                        #'(def descriptor
                            (begin-annotation (@interface klass-quoted (method-name ...))
                              (make-interface-descriptor klass '(method-name ...)))))
                      (defmake
                        #'(def (make obj)
                            (begin-annotation (@type.signature return: klass-quoted
                                                               effect: (cast)
                                                               arguments: (t::t))
                              (cast descriptor obj))))
                      (deftry-make
                        #'(def (try-make obj)
                            (begin-annotation (@type.signature return: t::t
                                                               effect: (cast)
                                                               arguments: (t::t))

                              (try-cast descriptor obj))))
                      (defpred
                        #'(def predicate
                            (begin-annotation (@mop.predicate klass-quoted)
                              (lambda (obj)
                                (direct-instance? klass obj)))))
                      (defpred-instance
                        #'(def (instance-predicate obj)
                            (begin-annotation (@type.signature return: boolean::t
                                                               effect: (pure)
                                                               arguments: (t::t))
                              (and (satisfies? descriptor obj) #t))))
                      (definfo
                        #'(defsyntax name
                            (make-interface-info
                             name: 'name
                             interface-mixin: [(quote-syntax mixin) ...]
                             interface-methods: '(method ...)
                             instance-type: (quote-syntax klass)
                             interface-descriptor: (quote-syntax descriptor)
                             instance-constructor: (quote-syntax make)
                             instance-try-constructor: (quote-syntax try-make)
                             instance-predicate: (quote-syntax predicate)
                             instance-satisfies-predicate: (quote-syntax instance-predicate)
                             implementation-methods: [(quote-syntax method-impl-name) ...]
                             unchecked-implementation-methods: [(quote-syntax unchecked-method-impl-name) ...]))))
         #'(begin defklass defdescriptor defmake deftry-make defpred defpred-instance definfo
                  defmethod-impl ...)))))

  ;; syntax for defining interface (extension) methods
  (defsyntax (definterface-method stx)
    (def (emit-raw-method? return)
      (let (return-type (syntax-local-value return))
        (if (and (class-type-info? return-type)
                 (memq (!class-type-id return-type) '(t void)))
          ;; no need for the raw method stub if we don't have to check the return type
          #f
          #t)))

    (def (make-checked-method-def Interface method-name raw-method-name unchecked-method-name signature return)
      (with-syntax ((Interface Interface)
                    (method method-name)
                    (target-method
                     (if (emit-raw-method? return)
                       raw-method-name
                       unchecked-method-name))
                    (self (syntax-local-introduce 'self))
                    (in (signature-arguments-in signature))
                    ((out ...) (signature-arguments-out signature))
                    (signature signature)
                    (return return))
        (if (stx-list? #'signature)
          (syntax/loc stx
            (def (method self . in)
              (with-interface-checked-method self (Interface signature return target-method)
                (:- (target-method self out ...) return))))
          (syntax/loc stx
            (def (method self . in)
              (with-interface-checked-method self (Interface signature return target-method)
                (:- (##apply target-method self out ...) return)))))))

    (def (make-raw-method-def Interface raw-method-name unchecked-method-name signature return)
      (if (emit-raw-method? return)
        (with-syntax ((Interface Interface)
                      (raw-method raw-method-name)
                      (unchecked-method unchecked-method-name)
                      (self (syntax-local-introduce 'self))
                      (in (signature-arguments-in signature))
                      ((out ...) (signature-arguments-out signature))
                      (signature signature)
                      (return return))
          (if (stx-list? #'signature)
            (syntax/loc stx
              (def (raw-method self . in)
                (with-interface-unchecked-method self (Interface signature return)
                  (: (unchecked-method self out ...) return))))
            (syntax/loc stx
              (def (raw-method self . in)
                (with-interface-unchecked-method self (Interface signature return)
                  (: (##apply unchecked-method self out ...) return))))))
        '(begin)))

    (def (make-unchecked-method-def Interface unchecked-method-name signature return body)
      (with-syntax ((Interface Interface)
                    (unchecked-method unchecked-method-name)
                    (self (syntax-local-introduce 'self))
                    (in (signature-arguments-in signature))
                    (signature signature)
                    (return return)
                    ((body ...) body))
        (syntax/loc stx
          (def (unchecked-method self . in)
            (with-interface-unchecked-method self (Interface signature return)
              (:- (let () body ...) return))))))

    (syntax-case stx ()
      ((_ Interface (method signature return) body ...)
       (and (syntax-local-interface-info? #'Interface)
            (identifier? #'method))
       (let* ((info (syntax-local-value #'Interface))
              (interface-name (interface-info-name info))
              (method-name
               (stx-identifier #'Interface interface-name "-" #'method))
              (raw-method-name
               (stx-identifier #'Interface "__" method-name))
              (unchecked-method-name
               (stx-identifier #'Interface "&" method-name)))
         (check-signature! stx #'signature #'return)
         (with-syntax ((defchecked
                         (make-checked-method-def
                          #'Interface
                          method-name
                          raw-method-name
                          unchecked-method-name
                          #'signature
                          #'return))
                       (defraw
                         (make-raw-method-def
                          #'Interface
                          raw-method-name
                          unchecked-method-name
                          #'signature
                          #'return))
                       (defunchecked
                         (make-unchecked-method-def
                          #'Interface
                          unchecked-method-name
                          #'signature
                          #'return
                          #'(body ...))))
           #'(begin defchecked defraw defunchecked))))))

  (defsyntax (with-interface-method stx)
    (syntax-case stx ()
      ((_ self (Interface signature return unchecked-proc) body ...)
       (let (checked? (and (stx-e #'unchecked-proc) #t))
         (with-syntax ((lambda-signature
                        (make-interface-method-lambda-signature stx
                          #'self #'Interface #'signature #'return #'unchecked-proc))
                       (contract
                        (make-interface-method-contract stx
                          #'self #'Interface #'signature checked?)))
           #'(begin-annotation (@type.signature . lambda-signature)
               (using contract body ...)))))))

  (defrule (with-interface-checked-method self (Interface signature return raw-method)
             body ...)
    (with-interface-method self (Interface signature return raw-method) body ...))

  (defrule (with-interface-unchecked-method self (Interface signature return)
             body ...)
    (with-interface-method self (Interface signature return #f) body ...))

  (defsyntax-for-export (interface-out stx)
    (def (expand body unchecked?)
      (syntax-case body ()
        ((id ...)
         (identifier-list? #'(id ...))
         (let lp ((rest #'(id ...)) (ids []))
           (syntax-case rest ()
             ((id . rest)
              (let (info (syntax-local-value #'id false))
                (unless (interface-info? info)
                  (raise-syntax-error #f "not an interface type" stx #'id))
                (with ((interface-info instance-type: type
                                       interface-descriptor: descriptor
                                       instance-constructor: constructor
                                       instance-try-constructor: try-constructor
                                       instance-predicate: predicate
                                       instance-satisfies-predicate: satisfies-predicate
                                       implementation-methods: method-impl
                                       unchecked-implementation-methods: unchecked-impl)
                       info)
                  (lp #'rest [#'id type descriptor constructor try-constructor predicate satisfies-predicate method-impl ... (if unchecked? unchecked-impl []) ... ids ...]))))
             (_ (cons begin: ids)))))))

    (syntax-case stx ()
      ((_ unchecked: unchecked? body ...)
       (expand #'(body ...) (stx-e #'unchecked?)))
      ((_ body ...)
       (expand #'(body ...) #t)))))

(module TypedDefinitions
  (import TypeCast Using ContractRules TypeReference Interface
          (phi: +1 InterfaceInfo TypeEnv ClassMeta))
  (export #t (phi: +1 #t))

  (begin-syntax
    (def (is-signature? formals)
      (let lp ((rest formals))
        (syntax-case rest ()
          ((id . rest)
           (identifier? #'id)
           (lp #'rest))
          (((id _) . rest)
           (lp #'rest))
          (((id . contract) . rest)
           (and (identifier? #'id)
                (signature-contract? #'contract))
           #t)
          ((kw id . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (lp #'rest))
          ((kw (id _) . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (lp #'rest))
          ((kw (id . contract) . rest)
           (and (stx-keyword? #'kw)
                (identifier? #'id)
                (signature-contract? #'contract))
           #t)
          (_ #f)))))

  (defsyntax (def/c stx)
    (def (make-definition id args return body)
      (check-signature! stx args return)
      (let (unchecked-id (stx-identifier id "__" id))
        (with-syntax ((defchecked (make-checked-def id unchecked-id args return))
                      (defunchecked (make-unchecked-def unchecked-id args return body)))
          #'(begin defchecked defunchecked))))

    (def (make-checked-def id unchecked-id signature return)
      (with-syntax ((id id)
                    (unchecked-id unchecked-id)
                    (in (signature-arguments-in signature))
                    ((out ...) (signature-arguments-out signature))
                    (signature signature)
                    (return return)
                    (return-type (resolve-type->type-descriptor stx return)))
        (if (stx-list? #'signature)
          (syntax/loc stx
            (def (id . in)
              (with-procedure-signature (signature return unchecked-id)
                (begin-annotation (@type return-type)
                  (with-procedure-contract signature
                    (unchecked-id out ...))))))
          (syntax/loc stx
            (def (id . in)
              (with-procedure-signature (signature return unchecked-id)
                (begin-annotation (@type return-type)
                  (with-procedure-contract signature
                    (##apply unchecked-id out ...)))))))))

    (def (make-unchecked-def unchecked-id signature return body)
      (with-syntax ((unchecked-id unchecked-id)
                    (in (signature-arguments-in signature))
                    (signature signature)
                    (return return)
                    ((body ...) body))
        (syntax/loc stx
          (def (unchecked-id . in)
            (with-procedure-signature (#f return #f)
              (with-procedure-unchecked-contract signature
                body ...))))))

    (syntax-case stx (=>)
      ((_ (id . args) => return body ...)
       (identifier? #'id)
       (if (is-signature? #'args)
         (make-definition #'id #'args #'return #'(body ...))
         ;; we only have a return type, so this is a plain def
         #'(def (id . args)
             (with-procedure-signature (#f return #f)
               body ...))))
      ((_ (id . args) body ...)
       (identifier? #'id)
       (if (is-signature? #'args)
         #'(def/c (id . args) => :t body ...)
         #'(def (id . args) body ...)))
      ((_ ((head . rest) . args) body ...)
       #'(def/c (head . rest)
           (lambda/c args body ...)))
      ((_ id expr)
       (identifier? #'id)
       #'(def id expr))))

  (defsyntax (with-procedure-signature stx)
    (syntax-case stx ()
      ((_ (#f return #f) body ...)
       (with-syntax ((return-type (resolve-type->type-descriptor stx #'return)))
         #'(begin-annotation (@type.signature return: return-type)
             (let () body ...))))
      ((_ (signature return unchecked) body ...)
       (with-syntax ((lambda-signature (make-procedure-lambda-signature stx #'signature #'return #'unchecked)))
         #'(begin-annotation (@type.signature . lambda-signature)
             (let () body ...))))))

  (defsyntax (with-procedure-contract stx)
    (syntax-case stx ()
      ((_ signature body ...)
       (with-syntax ((contract (make-procedure-contract stx #'signature #t)))
         #'(using contract body ...)))))

  (defsyntax (with-procedure-unchecked-contract stx)
    (syntax-case stx ()
      ((_ signature body ...)
       (with-syntax ((contract (make-procedure-contract stx #'signature #f)))
         #'(using contract body ...)))))

  (defsyntax (lambda/c stx)
    (def (make-lambda signature return body)
      (with-syntax ((in (signature-arguments-in signature))
                    (signature signature)
                    (return return)
                    ((body ...) body))
        (syntax/loc stx
          (lambda in
            (with-procedure-signature (signature return #f)
              (with-procedure-contract signature
                body ...))))))

    (syntax-case stx (=>)
      ((_ args => return body ...)
       (if (is-signature? #'args)
         (make-lambda #'args #'return #'(body ...))
         #'(lambda args
             (with-procedure-signature (#f return #f)
               body ...))))
      ((_ args body ...)
       (if (is-signature? #'args)
         #'(lambda/c args => :t body ...)
         #'(lambda args body ...)))))

  (defrule (def*/c id clause ...)
    (def id (case-lambda/c clause ...)))

  (defsyntax (case-lambda/c stx)
    (def (is-clause-signature? clause)
      (syntax-case clause (=>)
        ((args => return body ...) #t)
        ((args body ...)
         (is-signature? #'args))))

    (def (clause-e clause)
      (syntax-case clause (=>)
        ((args => return body ...)
         (if (is-signature? #'args)
           (begin
             (check-signature! stx #'args #'return keywords: #f optionals: #f)
             (with-syntax ((in (signature-arguments-in #'args)))
               #'(in
                  (with-procedure-signature (args return #f)
                    (with-procedure-contract args
                      body ...)))))
           #'(args
              (with-procedure-signature (#f return #f)
                body ...))))
        ((args body ...)
         (if (is-signature? #'args)
           (clause-e #'(args => :t body ...))
           clause))))

    (syntax-case stx ()
      ((_ clause ...)
       (ormap is-clause-signature? #'(clause ...))
       (with-syntax (((clause ...) (map clause-e #'(clause ...))))
         #'(case-lambda clause ...)))
      ((_ clause ...)
       #'(case-lambda clause ...))))

  (defsyntax (defmethod/c stx)
    (syntax-case stx (@method lambda/c case-lambda/c)
      ((_ {method Type} (lambda/c (self . args) body ...) . rest)
       (identifier? #'self)
       (with-syntax* ((receiver (genident #'self))
                      (proc
                       (syntax/loc stx
                         (lambda/c (receiver . args)
                              (using (self receiver ::- Type)
                                (with-receiver self
                                  (let () body ...)))))))
         #'(defmethod {method Type} proc . rest)))
      ((_ {method Type} (case-lambda/c ((self . args) body ...) ...) . rest)
       (identifier-list? #'(self ...))
       (with-syntax* (((receiver ...)
                       (map genident #'(self ...)))
                      (proc
                       (syntax/loc stx
                         (case-lambda/c
                          ((receiver . args)
                           (using (self receiver ::- Type)
                             (with-receiver self
                               (let () body ...))))
                          ...))))
         #'(defmethod {method Type} proc . rest)))
      ((_ . body)
       #'(defmethod . body))))

  (defsyntax (with-receiver stx)
    (syntax-case stx ()
      ((_ receiver expr)
       (with-syntax ((receiver (core-quote-syntax #'receiver)))
         #'(begin-annotation (@receiver receiver) expr)))))

  (defsyntax (let/c stx)
    (syntax-case stx (=>)
      ((_ id ((var init) ...) => return body ...)
       (identifier? #'id)
       (with-syntax ((proc (syntax/loc stx (lambda/c (var ...) => return body ...))))
         #'((letrec ((id proc)) id)
            init ...)))
      ((_ id ((var init) ...) body ...)
       (and (identifier? #'id)
            (is-signature? #'(var ...)))
       #'(let/c id ((var init) ...) => :t body ...))
      ((_ . body)
       #'(let . body))))

  (defsyntax (defclass/c stx)
    (def (generate hd slots body)
      (syntax-case hd ()
        ((id super ...)
         (and (identifier? #'id)
              (andmap syntax-local-class-type-info? #'(super ...)))
         (generate-defclass #'id #'(super ...) slots body))
        (id
         (identifier? #'id)
         (generate-defclass #'id [] slots body))
        (_ (raise-syntax-error #f "bad class head" stx hd))))

    (def (check-typedef-body! body)
      (def (body-opt? key)
        (memq (stx-e key)
              '(id: struct: name: constructor: transparent: final: print: equal: metaclass:)))
      (unless (stx-plist? body body-opt?)
        (raise-syntax-error #f "invalid defclass body" stx body)))

    (def (slot-name slot-spec)
      (stx-e
       (if (identifier? slot-spec)
         slot-spec
         (stx-car slot-spec))))

    (def (slot-contract slot-spec)
      (syntax-case slot-spec ()
        (id (identifier? #'id) #f)
        ((id defult) #f)
        ((id . contract) #'contract)))

    (def (slot-contract-normalize slot-spec)
      (alet (contract (slot-contract slot-spec))
        (contract-normalize contract)))

    (def (contract-normalize contract)
      (syntax-case contract (:~ :? := :-)
        ((pre ... := _)
         (contract-normalize #'(pre ...)))
        ((:~ pred :? type)
         #'(:~ (? (or not pred)) :? type))
        ((:- type) #f)
        (_ contract)))

    (def (slot-contract-type slot-spec)
      (alet (contract (slot-contract slot-spec))
        (contract-type contract)))

    (def (contract-type contract)
      (syntax-case contract (:~)
        ((~ type . maybe-default)
         (and (identifier? #'~)
              (or (free-identifier=? #'~ #':)
                  (free-identifier=? #'~ #':?)
                  (free-identifier=? #'~ #':-)
                  (free-identifier=? #'~ #'::-)))
         #'type)
        ((:~ pred ~ type . maybe-default)
         (and (identifier? #'~)
              (or (free-identifier=? #'~ #':)
                  (free-identifier=? #'~ #':?)
                  (free-identifier=? #'~ #':-)
                  (free-identifier=? #'~ #'::-)))
         #'type)
        (_ #f)))

    (def (slot-contract-predicate slot-spec)
      (alet (contract (slot-contract slot-spec))
        (contract-predicate contract)))

    (def (contract-predicate contract)
      (syntax-case contract (:~)
        ((:~ pred . contract-rest)
         #'pred)
        (_ #f)))

    (def (slot-default slot-spec)
      (syntax-case slot-spec (:=)
        ((id default) #'default)
        ((id ... := default) #'default)
        (_ #f)))

    (def (infer-slot-type slot type-a type-b)
      (cond
       ((not type-a) type-b)
       ((not type-b) type-a)
       ((free-identifier=? type-a type-b) type-a)
       (else
        (let again ((klass-a (syntax-local-value type-a))
                    (klass-b (syntax-local-value type-b)))
          (cond
           ((eq? klass-a klass-b) type-a)
           ((class-type-info? klass-a)
            (cond
             ((class-type-info? klass-b)
              (cond
               ((eq? (!class-type-id klass-a) (!class-type-id klass-b))
                type-a)
               ((member type-a (!class-precedence-list klass-b) free-identifier=?)
                type-b)
               ((member type-b (!class-precedence-list klass-a) free-identifier=?)
                type-a)
               (else
                (raise-syntax-error #f "incompatible slot types" stx slot type-a type-b))))
             ((type-reference? klass-b)
              (cond
               ((syntax-local-value (type-reference-identifier klass-b) false)
                => (lambda (klass-b) (again klass-a klass-b)))
               ;; the type reference cannot be resolved at this time, maybe it is
               ;; a (mutually) recursive type reference.
               ;; best we can do is ensure that it refers to the same type
               ((free-identifier=? type-a (type-reference-identifier klass-b))
                type-a)
               (else
                (raise-syntax-error #f "cannot resolve type reference to determine slot type compatibility" stx slot type-a type-b))))
             (else
              (raise-syntax-error #f "incompatible slot types" stx slot type-a type-b))))
           ((interface-info? klass-a)
            (cond
             ((interface-info? klass-b)
              (cond
               ((member type-a (interface-info-flatten-mixin klass-b))
                type-b)
               ((member type-b (interface-info-flatten-mixin klass-a))
                type-a)
               (else
                (raise-syntax-error #f "incompatible slot types" stx slot type-a type-b))))
             ((type-reference? klass-b)
              (cond
               ((syntax-local-value (type-reference-identifier klass-b) false)
                => (lambda (klass-b) (again klass-a klass-b)))
               ;; the type reference cannot be resolved at this time, maybe it is
               ;; a (mutually) recursive type reference.
               ;; best we can do is ensure that it refers to the same type
               ((free-identifier=? type-a (type-reference-identifier klass-b))
                type-a)
               (else
                (raise-syntax-error #f "cannot resolve type reference to determine slot type compatibility" stx slot type-a type-b))))
             (else
              (raise-syntax-error #f "incompatible slot types" stx slot type-a type-b))))
           ((type-reference? klass-a)
            (cond
             ((syntax-local-value (type-reference-identifier klass-a) false)
              => (lambda (klass-a) (again klass-a klass-b)))
             ((type-reference? klass-b)
              (cond
               ((syntax-local-value (type-reference-identifier klass-b) false)
                => (lambda (klass-b) (again klass-a klass-b)))
               ;; the best we can do is check that they refer to the same type
               ((free-identifier=? (type-reference-identifier klass-a) (type-reference-identifier klass-b))
                type-a)
               (else
                (raise-syntax-error #f "cannot resolve type reference to determine slot type compatibility" stx slot type-a type-b))))
             ;; the type reference cannot be resolved at this time, maybe it is
             ;; a (mutually) recursive type reference.
             ;; best we can do is ensure that it refers to the same type
             ((free-identifier=? type-b (type-reference-identifier klass-a))
              type-b)
             (else
              (raise-syntax-error #f "cannot resolve type reference to determine slot type compatibility" stx slot type-a type-b))))
           (else
            (raise-syntax-error #f "unexpected slot type" stx slot type-a klass-a)))))))

    ;; super list => (values slots {hash slot -> type})
    (def (get-mixin-slots super)
      (def tab (make-hash-table-eq))
      (let loop ((rest super) (result []))
        (match rest
          ([type-id . rest]
           (let* ((klass (resolve-type stx type-id))
                  (slots (!class-type-slots klass)))
             (let loop-inner ((rest-slots slots) (result result))
               (match rest-slots
                 ([slot . rest-slots]
                  (let (slot-type (hash-ref tab slot absent-value))
                    (cond
                     ((eq? slot-type absent-value)
                      (hash-put! tab slot (!class-slot-type klass slot))
                      (loop-inner rest-slots (cons slot result)))
                     ((not slot-type)
                      ;; it's there, but we don't have a type
                      (hash-put! tab slot (!class-slot-type klass slot))
                      (loop-inner rest-slots result))
                     (else
                      (let (other-slot-type (!class-slot-type klass slot))
                        (let (slot-type (infer-slot-type slot other-slot-type slot-type))
                          (hash-put! tab slot slot-type)
                          (loop-inner rest-slots result)))))))
                 (else
                  (loop (foldr cons rest (!class-type-super klass)) result))))))
          (else (values (reverse! result) tab)))))

    (def (get-slot-table slots mixin-slots super contract-e getf mixf)
      (def tab (make-hash-table-eq))
      (for-each
        (lambda (slot)
          (for-each
             (lambda (super-type)
               (let (klass (syntax-local-value super-type))
                 (cond
                  ((hash-get tab slot)
                   => (lambda (a)
                        (cond
                         ((getf klass slot)
                          => (lambda (b)
                               (hash-put! tab slot (mixf slot a b)))))))
                  ((getf klass slot)
                   => (lambda (a)
                        (hash-put! tab slot a))))))
             super))
        mixin-slots)
      (for-each
        (lambda (slot-spec)
          (let ((slot (slot-name slot-spec))
                (a (contract-e slot-spec)))
            (when a
              (cond
               ((hash-get tab slot)
                => (lambda (b)
                     (hash-put! tab slot (mixf slot a b))))
               (else
                (hash-put! tab slot a))))))
        slots)
      tab)

    (def (get-slot-contracts slots mixin-slots super slot-type-table)
      (get-slot-table slots mixin-slots super
                      slot-contract-normalize
                      !class-slot-contract
                      (lambda (slot a b)
                        (defrule (incompatible-contracts!)
                          (raise-syntax-error #f "incompatible slot contracts" stx slot a b))
                        (syntax-case a (: :? :- :~)
                          ((: . _)
                           (syntax-case b (:? :~)
                             ((~ . _)
                              (or (free-identifier=? #'~ #':)
                                  (free-identifier=? #'~ #':?)
                                  (free-identifier=? #'~ #':-))
                              (with-syntax ((type (hash-ref slot-type-table slot)))
                                #'(: type)))
                             ((:~ pred . _)
                              (with-syntax ((type (hash-ref slot-type-table slot)))
                                #'(:~ pred : type)))))
                          ((:? . _)
                           (syntax-case b (:~ :?)
                             ((:? . _)
                              (with-syntax ((type (hash-ref slot-type-table slot)))
                                #'(:? type)))
                             ((:~ pred :? . _)
                              (with-syntax ((type (hash-ref slot-type-table slot)))
                                #'(:~ pred :? type)))
                             (_ (incompatible-contracts!))))
                          ((:- . _)
                           (syntax-case b (:~)
                             ((~ . _)
                              (or (free-identifier=? #'~ #':)
                                  (free-identifier=? #'~ #':?)
                                  (free-identifier=? #'~ #':-))
                              (with-syntax ((type (hash-ref slot-type-table slot)))
                                #'(:- type)))
                             ((:~ pred . rest)
                              (with-syntax ((type (hash-ref slot-type-table slot)))
                                #'(:~ pred :- type)))))
                          ((:~ pred-a : . _)
                           (syntax-case b (:~)
                             ((:~ pred-b . _)
                              (with-syntax ((type (hash-ref slot-type-table slot)))
                                #'(:~ (? (and pred-a pred-b)) : type)))
                             (_ (with-syntax ((type (hash-ref slot-type-table slot)))
                                  #'(:~ pred-a : type)))))
                          ((:~ pred-a :? . _)
                           (syntax-case b (:? :~)
                             ((:? . _)
                              (with-syntax ((type (hash-ref slot-type-table slot)))
                                #'(:~ pred-a :? type)))
                             ((:~ pred-b :? . _)
                              (with-syntax ((type (hash-ref slot-type-table slot)))
                                #'(:~ (? (and pred-a pred-b)) :? type)))
                             ((:~ pred-b . _)
                              (incompatible-contracts!))
                             (_ (incompatible-contracts!))))
                          ((:~ pred-a :- . _)
                           (syntax-case b (:~)
                             ((~ . _)
                              (or (free-identifier=? #'~ #':)
                                  (free-identifier=? #'~ #':?)
                                  (free-identifier=? #'~ #':-)))
                             ((:~ pred-b . _)
                              (with-syntax ((type (hash-ref slot-type-table slot)))
                                #'(:~ (? (and pred-a pred-b)) :- type)))))
                          ((:~ pred-a . _)
                           (syntax-case b (: :? :- :~)
                             ((:~ pred-b ~ . _)
                              (or (free-identifier=? #'~ #':)
                                  (free-identifier=? #'~ #':?)
                                  (free-identifier=? #'~ #':-))
                              (with-syntax ((type (hash-ref slot-type-table slot)))
                                #'(:~ (? (and pred-a pred-b)) : type)))
                             (_ (with-syntax ((type (hash-ref slot-type-table slot)))
                                  #'(:~ pred-a : type)))))))))

    (def (get-slot-defaults slots mixin-slots super)
      (get-slot-table slots mixin-slots super
                      slot-default
                      !class-slot-default
                      (lambda (slot a b) a)))

    (def (update-slot-types! slots slot-type-table)
      (for-each
        (lambda (slot-spec)
          (let (slot (slot-name slot-spec))
            (alet (slot-type (slot-contract-type slot-spec))
              (cond
               ((hash-get slot-type-table slot)
                => (lambda (other-slot-type)
                     (let (slot-type (infer-slot-type slot other-slot-type slot-type))
                       (hash-put! slot-type-table slot slot-type))))
               (else
                (hash-put! slot-type-table slot slot-type))))))
        slots))


    (def (syntax-local-value/context id)
      (syntax-local-value
       id
       (lambda (id) (raise-syntax-error #f "not a class meta type binding" stx id))))

    ;; TODO this has to become a base utility in :gerbil/runtime/c4
    (def (order-slots slots super)
      (let* (((values precedence-list base-struct)
              (c4-linearize [] super
                            get-precedence-list:
                            (lambda (klass-id)
                              (cons klass-id
                                    (!class-precedence-list (syntax-local-value/context klass-id))))
                            struct:
                            (lambda (klass-id)
                              (!class-type-struct? (syntax-local-value/context klass-id)))
                            eq: free-identifier=?
                            get-name: stx-e))
             (base-fields
              (if base-struct
                (let (klass (syntax-local-value base-struct))
                  (cond
                   ((!class-type-ordered-slots klass))
                   (else
                    (let (ordered
                          (order-slots (!class-type-slots klass)
                                       (!class-type-super klass)))
                      (set! (!class-type-ordered-slots klass)
                        ordered)
                      ordered))))
                []))
             (r-fields (reverse base-fields))
             (seen-slots
              (let (tab (make-hash-table-eq))
                (for-each (cut hash-put! tab <> #t) base-fields)
                tab))
             (process-slot
              (lambda (slot)
                (unless (hash-get seen-slots slot)
                  (hash-put! seen-slots slot #t)
                  (set! r-fields (cons slot r-fields))))))
        (for-each
          (lambda (mixin)
            (let (klass (syntax-local-value mixin))
              (unless (!class-type-struct? klass)
                (cond
                 ((!class-type-ordered-slots klass)
                  => (lambda (ordered) (for-each process-slot ordered)))
                 (else
                  (let (ordered
                        (order-slots (!class-type-slots klass)
                                     (!class-type-super klass)))
                    (set! (!class-type-ordered-slots klass)
                      ordered)
                    (for-each process-slot ordered)))))))
          precedence-list)
        (for-each process-slot slots)
        (reverse r-fields)))

    (def (wrap e-stx)
      (stx-wrap-source e-stx (stx-source stx)))

    (def (generate-defclass id super-ref slots body)
      (def (make-id . args)
        (apply stx-identifier id args))
      (check-duplicate-identifiers (map slot-name slots) stx)
      (check-signature-spec! stx slots keywords: #f)
      (check-typedef-body! body)
      (let* (((values mixin-slots slot-type-table)
              (get-mixin-slots super-ref))
             (slot-contract-table (get-slot-contracts slots mixin-slots super-ref slot-type-table))
             (slot-default-table  (get-slot-defaults slots mixin-slots super-ref))
             (ordered-slots (order-slots (map slot-name slots) super-ref)))
        (update-slot-types! slots slot-type-table)

        (with-syntax* (((values slots)
                        (map slot-name slots))
                       ((values mixin-slots)
                        (filter (lambda (slot) (not (memq slot slots)))
                                mixin-slots))
                       ((values name)
                        (symbol->string (stx-e id)))
                       ((values super)
                        (map syntax-local-value super-ref))
                       ((values struct?)
                        (stx-getq struct: body))
                       (type id)
                       (type::t   (make-id name "::t"))
                       (make-type (make-id "make-" name))
                       (type?     (make-id name "?"))
                       (type-super
                        (map !class-type-descriptor super))
                       ((slot ...)
                        slots)
                       ((ordered-slot ...) ordered-slots)
                       ((getf ...)   ; no contract
                        (stx-map (cut make-id name "-" <>) slots))
                       ((setf ...)   ; with contract, if any
                        (stx-map (cut make-id name "-" <> "-set!") slots))
                       ((rawsetf ...) ; without contract, defclass-type
                        (stx-map (cut make-id name "-unchecked-" <> "-set!") slots))
                       ((mixin-slot ...)
                        mixin-slots)
                       ((mixin-getf ...)
                        (stx-map (cut make-id name "-" <>) mixin-slots))
                       ((mixin-setf ...)
                        (stx-map (cut make-id name "-" <> "-set!") mixin-slots))
                       ((mixin-rawsetf ...)
                        (stx-map (cut make-id name "-unchecked-" <> "-set!") mixin-slots))
                       ((ugetf ...)
                        (stx-map (cut make-id "&" <>) #'(getf ...)))
                       ((usetf ...)
                        (stx-map (cut make-id "&" <>) #'(setf ...)))
                       ((mixin-ugetf ...)
                        (stx-map (cut make-id "&" <>) #'(mixin-getf ...)))
                       ((mixin-usetf ...)
                        (stx-map (cut make-id "&" <>) #'(mixin-setf ...)))
                       ((values type-slots)
                        (cond
                         ((stx-null? slots) [])
                         (else
                          [slots:
                           (map (lambda (slot getf setf rawsetf)
                                  (with-syntax ((slot slot)
                                                (getf getf)
                                                (setf setf)
                                                (rawsetf rawsetf))
                                    (if (hash-get slot-contract-table (stx-e #'slot))
                                      #'(slot getf rawsetf)
                                      #'(slot getf setf))))
                                #'(slot ...)
                                #'(getf ...)
                                #'(setf ...)
                                #'(rawsetf ...))])))
                       ((values type-mixin-slots)
                        (cond
                         ((stx-null? mixin-slots) [])
                         (else
                          [mixin:
                           (map
                            (lambda (slot getf setf rawsetf)
                              (with-syntax ((slot slot)
                                            (getf getf)
                                            (setf setf)
                                            (rawsetf rawsetf))
                                (if (hash-get slot-contract-table (stx-e #'slot))
                                  #'(slot getf rawsetf)
                                  #'(slot getf setf))))
                            #'(mixin-slot ...)
                            #'(mixin-getf ...)
                            #'(mixin-setf ...)
                            #'(mixin-rawsetf ...))])))
                       ((values type-name)
                        [name: (or (stx-getq name: body) id)])
                       ((values type-id)
                        [id: (or (stx-getq id: body) (make-class-type-id #'type))])
                       ((values type-constructor)
                        (or (alet (e (stx-getq constructor: body))
                              [constructor: e])
                            []))
                       ((values properties)
                        (let* ((properties
                                (if (stx-e (stx-getq transparent: body))
                                  [[transparent: . #t]]
                                  []))
                               (properties
                                (cond
                                 ((stx-e (stx-getq print: body))
                                  => (lambda (print)
                                       (let (print (if (eq? print #t) #'(slot ...) print))
                                         (cons [print: . print] properties))))
                                 (else properties)))
                               (properties
                                (cond
                                 ((stx-e (stx-getq equal: body))
                                  => (lambda (equal)
                                       (let (equal (if (eq? equal #t) #'(slot ...) equal))
                                         (cons [equal: . equal] properties))))
                                 (else properties))))
                          properties))
                       ((values type-properties)
                        (if (null? properties)
                          []
                          (with-syntax ((properties properties))
                            [properties: #'(quote properties)])))
                       ((values metaclass)
                        (cond
                         ((stx-getq metaclass: body)
                          => (lambda (metaclass)
                               (and (identifier? metaclass) metaclass)))
                         (else #f)))
                       ((values final?)
                        (stx-e (stx-getq final: body)))
                       ((values type-struct)
                        [struct: struct?])
                       ((values type-final)
                        [final: final?])
                       ((values type-metaclass)
                        (if metaclass
                          ['metaclass: metaclass]
                          []))
                       ((type-body ...)
                        [type-id ...
                                 type-name ...
                                 type-constructor ...
                                 type-struct ...
                                 type-final ...
                                 type-metaclass ...
                                 type-properties ...
                                 type-slots ...
                                 type-mixin-slots ...])
                       (raw-make
                        (if (or (not (null? type-constructor))
                                (and (zero? (hash-length slot-contract-table))
                                     (zero? (hash-length slot-default-table)))
                                metaclass)
                          #'make-type
                          #f))
                       (defklass
                        (wrap
                         #'(defclass-type type::t type-super
                             raw-make type?
                             type-body ...)))
                       (meta-type-id
                        (with-syntax (((id: id) type-id))
                          #'(quote id)))
                       (meta-type-name
                        (with-syntax ((type-name (stx-car (stx-cdr type-name))))
                          #'(quote type-name)))
                       (meta-type-super
                        (with-syntax (((super-id ...) super-ref))
                          #'[(quote-syntax super-id) ...]))
                       (meta-type-slots #'(quote (slot ...)))
                       (meta-type-ordered-slots #'(quote (ordered-slot ...)))
                       (meta-type-slot-types
                        (with-syntax ((((slot . type) ...)
                                       (filter (lambda (st) (cdr st))
                                               (hash->list slot-type-table))))
                          #'[['slot :: (quote-syntax type)] ...]))
                       (meta-type-slot-contracts
                        (with-syntax ((((slot . contract) ...)
                                       (hash->list slot-contract-table)))
                          #'[['slot :: 'contract] ...]))
                       (meta-type-slot-defaults
                        (with-syntax ((((slot . default) ...)
                                       (hash->list slot-default-table)))
                          #'[['slot :: 'default] ...]))
                       (meta-type-struct? struct?)
                       (meta-type-final? final?)
                       (meta-type-metaclass
                        (if metaclass
                          (with-syntax ((metaclass metaclass))
                            #'(quote-syntax metaclass))
                          #f))
                       (meta-type-constructor-method
                        (if (null? type-constructor)
                          #f
                          (with-syntax (((constructor: kons) type-constructor))
                            #'(quote kons))))
                       (meta-type-descriptor #'(quote-syntax type::t))
                       (meta-type-constructor #'(quote-syntax make-type))
                       (meta-type-predicate #'(quote-syntax type?))
                       (meta-type-accessors
                        #'[['slot :: (quote-syntax getf)] ...
                           ['mixin-slot :: (quote-syntax mixin-getf)]...])
                       (meta-type-unchecked-accessors
                        #'[['slot :: (quote-syntax ugetf)] ...
                           ['mixin-slot :: (quote-syntax mixin-ugetf)]...])
                       (meta-type-mutators
                        #'[['slot :: (quote-syntax setf)] ...
                           ['mixin-slot :: (quote-syntax mixin-setf)]...])
                       ((values map-slot-usetf)
                        (lambda (slot setf rawsetf)
                          ['cons `(quote ,slot)
                                 (if (hash-get slot-contract-table (stx-e slot))
                                   `(quote-syntax ,(stx-identifier rawsetf "&" rawsetf))
                                   `(quote-syntax ,setf))]))
                       (meta-type-unchecked-mutators
                        (with-syntax (((slot-usetf ...)
                                       (map map-slot-usetf
                                            #'(slot ...)
                                            #'(usetf ...)
                                            #'(rawsetf ...)))
                                      ((mixin-slot-usetf ...)
                                       (map map-slot-usetf
                                            #'(mixin-slot ...)
                                            #'(mixin-usetf ...)
                                            #'(mixin-rawsetf ...))))
                          #'[slot-usetf ... mixin-slot-usetf ...]))
                       (defmeta
                        (wrap
                         #'(defsyntax type
                             (make-class-type-info
                              id: meta-type-id
                              name: meta-type-name
                              slots: meta-type-slots
                              ordered-slots: meta-type-ordered-slots
                              super: meta-type-super
                              struct?: meta-type-struct?
                              final?: meta-type-final?
                              metaclass: meta-type-metaclass
                              constructor-method: meta-type-constructor-method
                              type-descriptor: meta-type-descriptor
                              constructor: meta-type-constructor
                              predicate: meta-type-predicate
                              accessors: meta-type-accessors
                              mutators: meta-type-mutators
                              unchecked-accessors: meta-type-unchecked-accessors
                              unchecked-mutators: meta-type-unchecked-mutators
                              slot-types: meta-type-slot-types
                              slot-contracts: meta-type-slot-contracts
                              slot-defaults: meta-type-slot-defaults))))
                       (defmake
                        (cond
                         ((or (not (null? type-constructor))
                              (and (zero? (hash-length slot-contract-table))
                                   (zero? (hash-length slot-default-table)))
                              metaclass)
                          ;; use the raw constructor from defclass-type
                          #'(begin))
                         ;; synthesize struct constructor procedure
                         ((and struct? (zero? (hash-length slot-default-table)))
                          ;; no defaults -- define plain struct constructor
                          (with-syntax ((contract
                                         (foldr
                                           (lambda (slot r)
                                             (cond
                                              ((hash-get slot-contract-table (stx-e slot))
                                               => (lambda (contract)
                                                    (with-syntax ((slot slot)
                                                                  ((contract ...) contract))
                                                        (cons #'(slot contract ... )
                                                              r))))
                                              (else
                                               (cons slot r))))
                                           []
                                           #'(ordered-slot ...)))
                                        (type::t (core-quote-syntax #'type::t)))
                            (wrap
                             #'(def/c (make-type . contract) => type
                                 (begin-annotation (@type type::t)
                                   (##structure type::t ordered-slot ...))))))
                         (else
                          ;; define keyword constructor
                          (with-syntax ((contract
                                         (foldr
                                           (lambda (slot r)
                                             (let (default (hash-get slot-default-table (stx-e slot)))
                                               (cond
                                                ((hash-get slot-contract-table (stx-e slot))
                                                 => (lambda (contract)
                                                      (with-syntax ((slot slot)
                                                                    ((contract ...) contract)
                                                                    ((default ...)
                                                                     (if default
                                                                       [':= default]
                                                                       [])))
                                                        (cons* (symbol->keyword (stx-e #'slot))
                                                               #'(slot contract ... default ...)
                                                               r))))
                                                (else
                                                 (cons* (symbol->keyword (stx-e slot))
                                                        [slot default]
                                                        r)))))
                                           []
                                           #'(ordered-slot ...)))
                                        (type::t (core-quote-syntax #'type::t)))
                            (wrap
                             #'(def/c (make-type . contract) => type
                                 (begin-annotation (@type type::t)
                                   (##structure type::t ordered-slot ...))))))))
                       ((defsetf ...)
                        (filter
                         identity
                         (map
                           (lambda (slot setf rawsetf)
                             (alet (contract (hash-get slot-contract-table (stx-e slot)))
                               (with-syntax ((slot-spec (cons slot contract))
                                             (slot slot)
                                             (setf setf)
                                             (usetf (stx-identifier rawsetf "&" rawsetf)))
                                 (wrap
                                  #'(def/c (setf ($obj : type) slot-spec) => :void
                                      (usetf $obj slot))))))
                           #'(slot ...)
                           #'(setf ...)
                           #'(rawsetf ...)))))
          #'(begin defklass defmeta defmake defsetf ...))))

    (syntax-case stx ()
      ((_ hd (slot ...) . body)
       (generate #'hd #'(slot ...) #'body))))

  (defrule (defstruct/c hd slots . body)
    (defclass/c hd slots struct: #t . body)))

(import TypeReference TypeCast Using ContractRules Interface TypedDefinitions
        (phi: +1 InterfaceInfo TypeEnv ClassMeta))
