;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
package: gerbil/compiler
namespace: gxc

(import :gerbil/expander
        "base"
        "compile"
        "optimize-base"
        "optimize-xform")
(export #t)

(defcompile-method apply-optimize-call (&optimize-call &basic-xform)
  (%#call optimize-call%))

;;; apply-optimize-call
(def (optimize-call% stx)
  (ast-case stx (%#ref)
    ((_ (%#ref rator) . rands)
     (let* ((rator-id (identifier-symbol #'rator))
            (rator-type (optimizer-resolve-type rator-id)))
       (cond
        ((!procedure? rator-type)
         (verbose "optimize-call " rator-id  " => " rator-type " " (!type-id rator-type))
         (let (optimized {optimize-call rator-type stx #'rands})
           (if (!primitive? rator-type)
             optimized        ; %#call-unchecked unsafe for primitives
             (ast-case optimized (%#call)
               ((%#call . body)
                (xform-wrap-source
                 (cons '%#call-unchecked #'body)
                 stx))
               (_ optimized)))))
        ((not rator-type)
         (xform-call% stx))
        (else
         (raise-compile-error "illegal application; not a procedure" stx rator-type)))))
    (_ (xform-call% stx))))

(defmethod {optimize-call !predicate}
  (lambda (self stx args)
    (ast-case args ()
      ((expr)
       (let* ((klass (optimizer-resolve-class stx (!type-id self)))
              (object (compile-e #'expr)))
         (cond
          ((!class-final? klass)
           (xform-wrap-source
            ['%#struct-direct-instance? ['%#quote (!type-id klass)] object]
            stx))
          ((!class-struct? klass)
           (xform-wrap-source
            ['%#struct-instance? ['%#quote (!type-id klass)] object]
            stx))
          (else ;; generic class instance check
           (xform-wrap-source
            ['%#call ['%#ref 'class-instance?] ['%#ref (!type-id self)] object]
            stx))))))))

(defmethod {optimize-call !constructor}
  (lambda (sef stx args)
    (let* ((klass (!optimizer-resolve-class stx (!type-id self)))
           (fields (fx1+ (length (!class-fields klass))))
           (args (map compile-e args)))
      (cond
       ((!class-constructor klass)
        => (lambda (ctor)
             (let (($obj (gensym '__obj))
                   (ctor-impl (!class-lookup-method klass ctor)))
               (xform-wrap-source
                ['%#let-values [[[$obj]
                                 ['%#call ['%#ref 'make-object*]
                                          ['%#ref (!type-id self)]
                                          ['%#quote fields]]]]
                               (if ctor-impl
                                 ['%#call ['%#ref ctor-impl] ['%#ref $obj] args ...]
                                 (let ($ctor (gensym '__constructor))
                                   ['%#let-values [[[$ctor]
                                                    ['%#call ['%#ref 'find-method] ['%#ref (!type-id self)] ['%#quote ctor]]]]
                                                  ['%#if ['%#ref $ctor]
                                                         ['%#call ['%#ref $ctor] ['%#ref $obj] args ...]
                                                         ['%#call ['%#ref 'error] ['%#quote "missing constructor method implementation"] ['%#quote 'class:] ['%#ref (!type-id self)] ['%#quote 'method:] ['%#quote ctor]]]]))
                               ['%#ref $obj]]
                stx))))
       ((!class-struct? klass)
        (if (fx= (length args) (fx1- fields))
          (xform-wrap-source
           ['%#call ['%#ref '##structure]
                    ['%#ref (!type-id self)]
                    args ...]
           stx)
          (raise-compile-error "illegal struct constructor application; arity mismatch"
                               stx (!type-id self) (length (!class-fields klass)))))
       (else
        (let ($obj (gensym '__obj))
          (let lp ((rest args) (initializers []))
            (ast-case rest (%#quote)
              (((%#quote kw) expr . rest)
               (stx-keyword? #'kw)
               (let* ((slot (keyword->symbol (stx-e #'kw)))
                      (off  (!class-slot->field-offset klass off)))
                 (if off
                   (lp #'rest (cons (cons off #'expr) initializers))
                   (raise-compile-error "unknown slot" stx (!type-id self) slot))))
              (()
               (xform-wrap-source
                ['%#let-values [[[$obj]
                                 ['%#call ['%#ref 'make-object*]
                                          ['%#ref (!type-id self)]
                                          ['%#quote fields]]]]
                               (foldl (lambda (i r)
                                        (cons ['%#struct-unchecked-set!
                                               ['%#ref (!type-id self)]
                                               ['%#quote (car i)]
                                               ['%#ref $obj]
                                               (cdr i)]
                                              r))
                                      [] initializers)
                               ...
                               ['%#ref $obj]]
                stx))
              (_
               ;; not canonical static keyword -> value initialization list
               ;; redirect to class-instance-init!
               (xform-wrap-source
                ['%#let-values [[[$obj]
                                 ['%#call ['%#ref 'make-object*]
                                          ['%#ref (!type-id self)]
                                          ['%#quote fields]]]]
                               ['%#call ['%#ref 'class-instance-init!]
                                        ['%#ref $obj]
                                        args ...]
                               ['%#ref $obj]]
                stx))))))))))

(defmethod {optimize-call !accessor}
  (lambda (self stx args)
    (ast-case args ()
      ((_ object)
       (let* ((klass (!optimizer-resolve-class stx (!type-id self)))
              (field (!class-slot->field-offset (!accessor-slot self)))
              (object (compile-e #'object)))
         (cond
          ((!class-final? klass)
           (xform-wrap-source
            [(if (!accessor-checked? self)
               '%#struct-direct-ref
               '%#struct-unchecked-ref)
             ['%#ref (!type-id self)]
             ['%#quote field]
             object]
            stx))
          ((!class-struct? klass)
           (xform-wrap-source
            [(if (!accessor-checked? self)
               '%#struct-ref
               '%#struct-unchecked-ref)
             ['%#ref (!type-id self)]
             ['%#quote field]
             object]
            stx))
          ((!class-slot-find-struct klass slot)
           => (lambda (klass)
                (xform-wrap-source
                 [(if (!accessor-checked? self)
                    '%#struct-ref
                    '%#struct-unchecked-ref)
                  ['%#ref (!type-id self)]
                  ['%#quote field]
                  object]
                 stx)))
          ((!accessor-checked? self)
           (xform-wrap-source
            (let ($obj (gensym '__obj))
              ['%#let-values [[[$obj] object]]
                             ['%#if ['%#struct-direct-instance?
                                     ['%#quote (!type-id klass)]
                                     ['%#ref $obj]]
                                    ['%#struct-unchecked-ref
                                     ['%#ref (!type-id self)]
                                     ['%#quote field]
                                     ['%#ref $obj]]
                                    ['%#call
                                     ['%#ref 'class-slot-ref]
                                     ['%#ref (!type-id self)]
                                     ['%#ref $obj]
                                     ['%#quote (!accessor-slot self)]]]])
            stx))
          (else
           (xform-wrap-source
            ['%#call ['%#ref 'unchecked-slot-ref]
                     object
                     ['%#quote (!accessor-slot self)]]
            stx))))))))

(defmethod {optimize-call !mutator}
  (lambda (self stx args)
    (ast-case args ()
      ((_ object value)
       (let* ((klass (!optimizer-resolve-class stx (!type-id self)))
              (fielld (!class-slot->field-offset (!mutator-slot self)))
              (object (compile-e #'object))
              (value (compile-e #'value)))
         (cond
          ((!class-final? klass)
           (xform-wrap-source
            [(if (!mutator-checked? self)
               '%#struct-direct-set!
               '%#struct-unchecked-set!)
             ['%#ref (!type-id self)]
             ['%#quote field]
             object
             value]
            stx))
          ((!class-struct? klass)
           (xform-wrap-source
            [(if (!mutator-checked? self)
               '%#struct-set!
               '%#struct-unchecked-set!)
             ['%#ref (!type-id self)]
             ['%#quote field]
             object
             value]
            stx))
          ((!class-slot-find-struct klass slot)
           => (lambda (klass)
                (xform-wrap-source
                 [(if (!mutator-checked? self)
                    '%#struct-set!
                    '%#struct-unchecked-set!)
                  ['%#ref (!type-id self)]
                  ['%#quote field]
                  object
                  value]
                 stx)))
          ((!mutator-checked? self)
           (xform-wrap-source
            (let ($obj (gensym '__obj))
              ['%#let-values [[[$obj] object]]
                             ['%#if ['%#struct-direct-instance?
                                     ['%#quote (!type-id klass)]
                                     ['%#ref $obj]]
                                    ['%#struct-unchecked-set!
                                     ['%#ref (!type-id self)]
                                     ['%#quote field]
                                     ['%#ref $obj]
                                     value]
                                    ['%#call
                                     ['%#ref 'class-slot-set!]
                                     ['%#ref (!type-id self)]
                                     ['%#ref $obj]
                                     ['%#quote (!mutator-slot self)]
                                     value]]])
            stx))
          (else
           (xform-wrap-source
            ['%#call ['%#ref 'unchecked-slot-set!]
                     object
                     ['%#quote (!mutator-slot self)]
                     value]
            stx))))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TODO DEPRECATED remove
(defmethod {optimize-call !struct-pred}
  (lambda (self stx args)
    (with ((!struct-pred struct-t) self)
      (let (struct-type (optimizer-resolve-type struct-t))
        (match struct-type
          ((!struct-type struct-type-id _ _ _ _ plist)
           (ast-case args ()
             ((expr)
              (let ((expr (compile-e #'expr))
                    (op (if (and plist (assgetq final: plist))
                          '%#struct-direct-instance?
                          '%#struct-instance?)))
                (xform-wrap-source
                 [op ['%#quote struct-type-id] expr]
                 stx)))
             (_ (raise-compile-error "Illegal struct predicate application" stx))))
         (#f (xform-call% stx))
         (else
          (raise-compile-error "Illegal struct predicate application; not a struct type"
                               stx struct-t struct-type)))))))

(defmethod {optimize-call !struct-cons}
  (lambda (self stx args)
    (with ((!struct-cons struct-t) self)
      (let (struct-type (optimizer-resolve-type struct-t))
        (match struct-type
          ((!struct-type type-id _ fields xfields ctor)
           (let (args (map compile-e args))
             (cond
              ((and ctor xfields (!struct-type-lookup-method struct-type ctor))
               => (lambda (kons) ; known constructor, inline make-object and dispatch
                    ;; Note the interplay with sealed classes and method specialization.
                    ;; This will dispatch to the unspecialized constructor method, but
                    ;; that's something we can live with for structs as there is no slot
                    ;; resolution overhead.
                    (let ($obj (make-symbol (gensym '__obj)))
                      (xform-wrap-source
                       ['%#let-values [[[$obj]
                                        ['%#call ['%#ref 'make-object]
                                                 ['%#ref struct-t]
                                                 ['%#quote (fx+ fields xfields)]]]]
                                      ['%#begin
                                       (compile-e
                                        (xform-wrap-source
                                         ['%#call ['%#ref kons] ['%#ref $obj] args ...]
                                         stx))
                                       ['%#ref $obj]]]
                       stx))))
              ((or ctor (not xfields)) ; inline call to make-struct-instance
               (xform-wrap-source
                ['%#call ['%#ref 'make-struct-instance] ['%#ref struct-t] args ...]
                stx))
              (else ; plain old struct, inline ##structure application
               (let (arity (fx+ fields xfields))
                 (if (fx= arity (length args))
                   (xform-wrap-source
                    ['%#call ['%#ref '##structure] ['%#ref struct-t] args ...]
                    stx)
                   (raise-compile-error "Illegal struct constructor application; arity mismatch"
                                        stx struct-t arity)))))))
          (#f
           (verbose "cannot inline struct constructor; unknown struct type " struct-t)
           (xform-call% stx))
          (else
           (raise-compile-error "Illegal struct constructor application; not a struct type"
                                stx struct-t struct-type)))))))

(defmethod {optimize-call !struct-getf}
  (lambda (self stx args)
    (with ((!struct-getf struct-t off unchecked?) self)
      (let (struct-type (optimizer-resolve-type struct-t))
        (match struct-type
          ((!struct-type struct-type-id _ fields xfields _ plist)
           (if xfields
             (ast-case args ()
               ((expr)
                (let ((expr (compile-e #'expr))
                      (off (fx+ off xfields 1))
                      (op (cond
                           (unchecked?
                            '%#struct-unchecked-ref)
                           ((and plist (assgetq final: plist))
                            '%#struct-direct-ref)
                           (else
                            '%#struct-ref))))
                  (xform-wrap-source
                   [op ['%#ref struct-t] ['%#quote off] expr]
                   stx)))
               (_ (raise-compile-error "Illegal struct accessor application" stx)))
             (begin
               (verbose "struct-getf: incomplete struct " struct-type-id)
               (xform-call% stx))
             ))                 ; incomplete struct info; can't inline
          (#f (xform-call% stx))
          (else
           (raise-compile-error "Illegal struct predicate application; not a struct type"
                                stx struct-t struct-type)))))))

(defmethod {optimize-call !struct-setf}
  (lambda (self stx args)
    (with ((!struct-setf struct-t off unchecked?) self)
      (let (struct-type (optimizer-resolve-type struct-t))
        (match struct-type
          ((!struct-type struct-type-id _ fields xfields _ plist)
           (if xfields
             (ast-case args ()
               ((expr val)
                (let ((expr (compile-e #'expr))
                      (val (compile-e #'val))
                      (off (fx+ off xfields 1))
                      (op (cond
                           (unchecked?
                            '%#struct-unchecked-set!)
                           ((and plist (assgetq final: plist))
                            '%#struct-direct-set!)
                           (else
                            '%#struct-set!))))
                  (xform-wrap-source
                   [op ['%#ref struct-t] ['%#quote off] expr val]
                   stx)))
               (_ (raise-compile-error "Illegal struct mutator application" stx)))
             (begin
               (verbose "struct-setf: incomplete struct " struct-type-id)
               (xform-call% stx))
             ))                 ; incomplete struct info; can't inline
          (#f (xform-call% stx))
          (else
           (raise-compile-error "Illegal struct predicate application; not a struct type"
                                stx struct-t struct-type)))))))

(defmethod {optimize-call !class-pred}
  (lambda (self stx args)
    (with ((!class-pred class-t) self)
      (let (class-type (optimizer-resolve-type class-t))
        (match class-type
          ((!class-type class-type-id _ _ _ _ _ plist)
           (ast-case args ()
             ((expr)
              (let ((expr (compile-e #'expr))
                    (final? (and plist (assgetq final: plist))))
                (if final?
                  (xform-wrap-source
                   ['%#struct-direct-instance? ['%#quote class-type-id] expr]
                   stx)
                  (xform-wrap-source
                   ['%#call ['%#ref 'class-instance?] ['%#ref class-t] expr]
                   stx))))
             (_ (raise-compile-error "Illegal class predicate application" stx))))
          (#f (xform-call% stx))
          (else
           (raise-compile-error "illegal class predicate application; not a class type"
                                stx class-t class-type)))))))

(defmethod {optimize-call !class-cons}
  (lambda (self stx args)
    (with ((!class-cons class-t) self)
      (let (class-type (optimizer-resolve-type class-t))
        (match class-type
          ((? !class-type?)
           (let (args (map compile-e args))
             ;; this could be optimized further to do direct dispatch/initialization
             ;; for complete classes; note however the interplay with sealed classes
             ;; and method specialization. For now we simply dispatch directly to
             ;; make-class-instance, and sealed classes will dispatch to the specialized
             ;; constructor.
             (xform-wrap-source
              ['%#call ['%#ref 'make-class-instance] ['%#ref class-t] args ...]
              stx)))
          (#f
           (verbose "cannot inline class constructor; class struct type " class-t)
           (xform-call% stx))
          (else
           (raise-compile-error "Illegal class constructor application; not a struct type"
                                stx class-t class-type)))))))

(defmethod {optimize-call !class-getf}
  (lambda (self stx args)
    (with ((!class-getf class-t slot unchecked?) self)
      (ast-case args ()
        ((expr)
         (let (expr (compile-e #'expr))
           ;; this could be optimized for final complete classes to do direct structure references
           (xform-wrap-source
            ['%#call ['%#ref (if unchecked? 'slot-ref 'unchecked-slot-ref)] expr ['%#quote slot]]
            stx)))
        (_ (raise-compile-error "Illegal class accessor application" stx))))))

(defmethod {optimize-call !class-setf}
  (lambda (self stx args)
    (with ((!class-setf class-t slot unchecked?) self)
      (ast-case args ()
        ((expr val)
         (let ((expr (compile-e #'expr))
               (val (compile-e #'val)))
           ;; this could be optimized for final complete classes to do direct structure mutation
           (xform-wrap-source
            ['%#call ['%#ref (if unchecked? 'unchecked-slot-set! 'slot-set!)] expr ['%#quote slot] val]
            stx)))
        (_ (raise-compile-error "Illegal class mutator application" stx))))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defmethod {optimize-call !lambda}
  (lambda (self stx args)
    (with ((!lambda _ arity dispatch inline) self)
      (unless (!lambda-arity-match? self args)
        (raise-compile-error "Illegal lambda application; arity mismatch"
                             stx arity))
      (cond
       (inline
        (verbose "inline lambda")
        (compile-e
         (xform-wrap-source
          (inline stx)
          stx)))
       (dispatch
        (verbose "dispatch lambda => " dispatch)
        (compile-e
         (xform-wrap-source
          ['%#call ['%#ref dispatch] args ...]
          stx)))
       (else
        (xform-call% stx))))))

(defmethod {optimize-call !case-lambda}
  (lambda (self stx args)
    (with ((!case-lambda _ clauses) self)
      (cond
       ((find (cut !lambda-arity-match? <> args) clauses)
        => (lambda (clause) {optimize-call clause stx args}))
       (else
        (raise-compile-error "Illegal case-lambda application; arity mismatch"
                             stx (map !lambda-arity clauses)))))))

(def (!lambda-arity-match? self args)
  (with ((!lambda _ arity) self)
    (match arity
      ((? fixnum?)
       (fx= (length args) arity))
      ([arity]
       (fx>= (length args) arity)))))

(defmethod {optimize-call !kw-lambda}
  (lambda (self stx args)
    (with ((!kw-lambda _ table dispatch) self)
      (match (optimizer-lookup-type dispatch)
        ((!kw-lambda-primary _ keys main)
         (let ((values pargs kwargs)
               (!kw-lambda-split-args stx args))
           (verbose "dispatch kw-lambda => " main)
           (if table
             (let (xargs
                   (map (lambda (key)
                          (cond
                           ((assgetq key kwargs) => values)
                           (else '(%#ref absent-value))))
                        keys))
               (for-each
                 (lambda (kw)
                   (unless (memq (car kw) keys)
                     (raise-compile-error "Illegal keyword lambda application; unexpected keyword"
                                          stx keys kw)))
                 kwargs)
               (compile-e
                (xform-wrap-source
                 ['%#call ['%#ref main] ['%#quote #f] xargs ... pargs ...]
                 stx)))
             (let* ((kwt (make-symbol (gensym '__kwt)))
                    (kwvars
                     (map (lambda (_) (make-symbol (gensym '__kw)))
                          kwargs))
                    (kwbind
                     (map (lambda (kw kwvar) [[kwvar] (cdr kw)])
                          kwargs kwvars))
                    (kwset
                     (map (lambda (kw kwvar)
                            ['%#call '(%#ref hash-put!) ['%#ref kwt]
                                     ['%#quote (car kw)]
                                     ['%#ref kwvar]])
                          kwargs kwvars))
                    (xkwargs
                     (map (lambda (kw kwvar)
                            (cons (car kw) ['%#ref kwvar]))
                          kwargs kwvars))
                    (xargs
                     (map (lambda (key)
                            (cond
                             ((assgetq key xkwargs) => values)
                             (else '(%#ref absent-value))))
                          keys)))
               (compile-e
                (xform-wrap-source
                 ['%#let-values kwbind
                   ['%#let-values [[[kwt]
                                    (xform-wrap-source
                                     ['%#call '(%#ref make-hash-table-eq)
                                             '(%#quote size:)
                                             ['%#quote (length kwargs)]]
                                     stx)]]
                     ['%#begin
                      kwset ...
                      (xform-wrap-source
                       ['%#call ['%#ref main] ['%#ref kwt] xargs ... pargs ...]
                       stx)]]]
                 stx))))))
          (else
           (verbose "unknown keyword dispatch lambda " dispatch)
           (xform-call% stx))))))

(def (!kw-lambda-split-args stx args)
  (let lp ((rest args) (pargs []) (kwargs []))
    (ast-case rest (%#quote)
      (((%#quote #!key) key . rest)
       (lp #'rest (cons #'key pargs) kwargs))
      (((%#quote #!rest) . rest)
       (values (foldl cons #'rest pargs) (reverse kwargs)))
      (((%#quote kw) val . rest)
       (stx-keyword? #'kw)
       (let (kw (stx-e #'kw))
         (if (assq kw kwargs)
           (raise-compile-error "Illegal keyword lambda application; duplicate keyword" stx kw)
           (lp #'rest pargs (cons (cons kw #'val) kwargs)))))
      ((val . rest)
       (lp #'rest (cons #'val pargs) kwargs))
      (()
       (values (reverse pargs) (reverse kwargs))))))

(defmethod {optimize-call !kw-lambda-primary}
  (lambda (self stx args)
    (xform-call% stx)))
